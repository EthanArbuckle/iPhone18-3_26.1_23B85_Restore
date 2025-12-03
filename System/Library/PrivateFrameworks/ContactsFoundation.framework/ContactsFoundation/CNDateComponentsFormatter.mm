@interface CNDateComponentsFormatter
+ (BOOL)shouldUseChinaSpecificFormattersForLocale:(id)locale;
+ (BOOL)shouldUseIslamicSpecificFormattersForLocale:(id)locale;
+ (id)chineseCyclicYearMonthDayFormatter;
+ (id)chineseLongStyleRelatedGregorianYearMonthDayFormatter;
+ (id)chineseMonthDayFormatter;
+ (id)chineseMonthDayHanidayFormatter;
+ (id)chineseRelatedGregorianYearMonthDayFormatter;
+ (id)chineseRelatedGregorianYearMonthDayHanidayFormatter;
+ (id)dateFormatterWithYearFormat:(id)format hasLongFormat:(BOOL)longFormat locale:(id)locale;
+ (id)formatterFuturesWithLocale:(id)locale;
+ (id)os_log;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (BOOL)shouldUseArabicGregorianPlaceholderStringForLanguage:(id)language;
- (BOOL)shouldUseArabicIslamicPlaceholderStringForLanguage:(id)language;
- (BOOL)shouldUseChinesePlaceholderString;
- (CNDateComponentsFormatter)init;
- (id)dateComponentsFromString:(id)string;
- (id)dateFormatPlaceholderString;
- (id)dateFormatPlaceholderStringForLanguage:(id)language;
- (id)displayFormatterForComponents:(id)components;
- (id)dmyFormatString;
- (id)normalizedComponentsFromDate:(id)date calendar:(id)calendar timeZone:(id)zone;
- (id)placeholderStringWithLocalizedDay:(id)day month:(id)month year:(id)year;
- (id)placeholderSubstitutionStringWithDay:(unint64_t)day month:(unint64_t)month year:(unint64_t)year;
- (id)stringForObjectValue:(id)value;
- (id)stringFromDateComponents:(id)components;
- (void)regenerateFormatterFutures;
- (void)setLocale:(id)locale;
@end

@implementation CNDateComponentsFormatter

+ (id)os_log
{
  if (os_log_cn_once_token_1_13 != -1)
  {
    +[CNDateComponentsFormatter os_log];
  }

  v3 = os_log_cn_once_object_1_13;

  return v3;
}

uint64_t __35__CNDateComponentsFormatter_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.debug", "date-components-formatter");
  v1 = os_log_cn_once_object_1_13;
  os_log_cn_once_object_1_13 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNDateComponentsFormatter)init
{
  v6.receiver = self;
  v6.super_class = CNDateComponentsFormatter;
  v2 = [(CNDateComponentsFormatter *)&v6 init];
  if (v2)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    locale = v2->_locale;
    v2->_locale = currentLocale;

    [(CNDateComponentsFormatter *)v2 regenerateFormatterFutures];
  }

  return v2;
}

- (id)placeholderSubstitutionStringWithDay:(unint64_t)day month:(unint64_t)month year:(unint64_t)year
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v9 setDay:day];
  [v9 setMonth:month];
  [v9 setYear:year];
  locale = [(CNDateComponentsFormatter *)self locale];
  v11 = [locale objectForKey:*MEMORY[0x1E695D958]];
  v12 = [v11 dateFromComponents:v9];

  v13 = objc_opt_class();
  locale2 = [(CNDateComponentsFormatter *)self locale];
  v15 = [v13 shortDayMonthYearDateFormatterWithLocale:locale2];

  v16 = MEMORY[0x1E696AD60];
  v17 = [v15 stringFromDate:v12];
  v18 = [v16 stringWithString:v17];

  return v18;
}

- (id)dmyFormatString
{
  dateFormatPlaceholderString = self->_dateFormatPlaceholderString;
  if (!dateFormatPlaceholderString)
  {
    v4 = objc_opt_class();
    locale = [(CNDateComponentsFormatter *)self locale];
    v6 = [v4 shortDayMonthYearDateFormatterWithLocale:locale];

    dateStyle = [v6 dateStyle];
    [v6 setDateStyle:1];
    dateFormat = [v6 dateFormat];
    [v6 setDateStyle:dateStyle];
    lowercaseString = [dateFormat lowercaseString];
    v10 = [lowercaseString copy];
    v11 = self->_dateFormatPlaceholderString;
    self->_dateFormatPlaceholderString = v10;

    dateFormatPlaceholderString = self->_dateFormatPlaceholderString;
  }

  return dateFormatPlaceholderString;
}

- (id)dateFormatPlaceholderString
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  v6 = [(CNDateComponentsFormatter *)self dateFormatPlaceholderStringForLanguage:firstObject];

  return v6;
}

- (id)dateFormatPlaceholderStringForLanguage:(id)language
{
  v26 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if ([(CNDateComponentsFormatter *)self shouldUseArabicGregorianPlaceholderStringForLanguage:languageCopy])
  {
    arabicGregorianPlaceholderString = [(CNDateComponentsFormatter *)self arabicGregorianPlaceholderString];
LABEL_5:
    v6 = arabicGregorianPlaceholderString;
    goto LABEL_16;
  }

  if ([(CNDateComponentsFormatter *)self shouldUseArabicIslamicPlaceholderStringForLanguage:languageCopy])
  {
    arabicGregorianPlaceholderString = [(CNDateComponentsFormatter *)self arabicIslamicPlaceholderString];
    goto LABEL_5;
  }

  locale = [(CNDateComponentsFormatter *)self locale];
  localeIdentifier = [locale localeIdentifier];

  pErrorCode = U_ZERO_ERROR;
  [localeIdentifier UTF8String];
  udatpg_open();
  v22 = localeIdentifier;
  v9 = &stru_1EF441028;
  v10 = &dword_185A9209C;
  v11 = 1;
  v12 = &stru_1EF441028;
  v23 = &stru_1EF441028;
  do
  {
    AppendItemName = udatpg_getAppendItemName();
    u_strToUTF8(dest, 128, 0, AppendItemName, 0, &pErrorCode);
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:dest];
    v15 = v14;
    if (v11 == 1)
    {
      v16 = v23;
      v17 = v12;
      v23 = v14;
      goto LABEL_13;
    }

    if (v11 == 9)
    {
      v16 = v9;
      v9 = v14;
      v17 = v12;
LABEL_13:
      v18 = v14;

      v12 = v17;
      goto LABEL_14;
    }

    v16 = v12;
    v17 = v14;
    if (v11 == 3)
    {
      goto LABEL_13;
    }

LABEL_14:

    v19 = *v10++;
    v11 = v19;
  }

  while (v19 != 16);
  udatpg_close();
  v6 = [(CNDateComponentsFormatter *)self placeholderStringWithLocalizedDay:v9 month:v12 year:v23];

LABEL_16:
  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)placeholderStringWithLocalizedDay:(id)day month:(id)month year:(id)year
{
  dayCopy = day;
  monthCopy = month;
  yearCopy = year;
  if ([(CNDateComponentsFormatter *)self shouldUseChinesePlaceholderString])
  {
    v11 = [(CNDateComponentsFormatter *)self chinesePlaceholderStringWithDay:dayCopy month:monthCopy year:yearCopy];
  }

  else
  {
    v11 = [(CNDateComponentsFormatter *)self placeholderSubstitutionStringWithDay:4 month:2 year:13];
    [v11 replaceOccurrencesOfString:@"0?4" withString:dayCopy options:1024 range:{0, objc_msgSend(v11, "length")}];
    [v11 replaceOccurrencesOfString:@"0?2" withString:monthCopy options:1024 range:{0, objc_msgSend(v11, "length")}];
    [v11 replaceOccurrencesOfString:@"13" withString:yearCopy options:1024 range:{0, objc_msgSend(v11, "length")}];
  }

  return v11;
}

- (BOOL)shouldUseChinesePlaceholderString
{
  locale = [(CNDateComponentsFormatter *)self locale];
  v3 = [locale objectForKey:*MEMORY[0x1E695D958]];
  calendarIdentifier = [v3 calendarIdentifier];
  v5 = [calendarIdentifier containsString:@"chinese"];

  return v5;
}

- (BOOL)shouldUseArabicGregorianPlaceholderStringForLanguage:(id)language
{
  languageCopy = language;
  locale = [(CNDateComponentsFormatter *)self locale];
  v6 = [locale objectForKey:*MEMORY[0x1E695D958]];
  calendarIdentifier = [v6 calendarIdentifier];
  v8 = [calendarIdentifier containsString:@"gregorian"];

  LOBYTE(locale) = [languageCopy isEqualToString:@"ar"];
  return v8 & locale;
}

- (BOOL)shouldUseArabicIslamicPlaceholderStringForLanguage:(id)language
{
  languageCopy = language;
  locale = [(CNDateComponentsFormatter *)self locale];
  v6 = [locale objectForKey:*MEMORY[0x1E695D958]];
  calendarIdentifier = [v6 calendarIdentifier];
  v8 = [calendarIdentifier containsString:@"islamic"];

  LOBYTE(locale) = [languageCopy isEqualToString:@"ar"];
  return v8 & locale;
}

+ (id)dateFormatterWithYearFormat:(id)format hasLongFormat:(BOOL)longFormat locale:(id)locale
{
  longFormatCopy = longFormat;
  formatCopy = format;
  localeCopy = locale;
  v9 = @"dM";
  if (longFormatCopy)
  {
    v9 = @"dMMMM";
  }

  v10 = v9;
  v11 = v10;
  if (formatCopy)
  {
    v12 = [(__CFString *)v10 stringByAppendingString:formatCopy];

    v11 = v12;
  }

  v13 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v11 options:0 locale:localeCopy];
  v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v14 setLocale:localeCopy];
  [v14 setDateFormat:v13];
  if (!formatCopy)
  {
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-1.25138736e10];
    [v14 setDefaultDate:v15];
  }

  return v14;
}

- (void)regenerateFormatterFutures
{
  v3 = objc_opt_class();
  locale = [(CNDateComponentsFormatter *)self locale];
  v4 = [v3 formatterFuturesWithLocale:locale];
  lazyFormatterFutures = self->_lazyFormatterFutures;
  self->_lazyFormatterFutures = v4;
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  if (self->_locale != localeCopy)
  {
    v6 = localeCopy;
    objc_storeStrong(&self->_locale, locale);
    [(CNDateComponentsFormatter *)self regenerateFormatterFutures];
    localeCopy = v6;
  }
}

+ (BOOL)shouldUseChinaSpecificFormattersForLocale:(id)locale
{
  v3 = [locale objectForKey:*MEMORY[0x1E695D958]];
  calendarIdentifier = [v3 calendarIdentifier];
  v5 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D828]];

  return v5;
}

+ (BOOL)shouldUseIslamicSpecificFormattersForLocale:(id)locale
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695D880];
  v12[0] = *MEMORY[0x1E695D878];
  v12[1] = v3;
  v4 = *MEMORY[0x1E695D888];
  v12[2] = *MEMORY[0x1E695D890];
  v12[3] = v4;
  v5 = MEMORY[0x1E695DEC8];
  localeCopy = locale;
  v7 = [v5 arrayWithObjects:v12 count:4];
  v8 = [localeCopy objectForKey:*MEMORY[0x1E695D958]];

  calendarIdentifier = [v8 calendarIdentifier];
  LOBYTE(v5) = [v7 containsObject:calendarIdentifier];

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)formatterFuturesWithLocale:(id)locale
{
  localeCopy = locale;
  array = [MEMORY[0x1E695DF70] array];
  if ([self shouldUseChinaSpecificFormattersForLocale:localeCopy])
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke;
    v50[3] = &__block_descriptor_40_e9__16__0__8l;
    v50[4] = self;
    v6 = [CNFuture lazyFutureWithBlock:v50];
    [array addObject:v6];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_2;
    v49[3] = &__block_descriptor_40_e9__16__0__8l;
    v49[4] = self;
    v7 = [CNFuture lazyFutureWithBlock:v49];
    [array addObject:v7];

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_3;
    v48[3] = &__block_descriptor_40_e9__16__0__8l;
    v48[4] = self;
    v8 = [CNFuture lazyFutureWithBlock:v48];
    [array addObject:v8];

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_4;
    v47[3] = &__block_descriptor_40_e9__16__0__8l;
    v47[4] = self;
    v9 = [CNFuture lazyFutureWithBlock:v47];
    [array addObject:v9];

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_5;
    v46[3] = &__block_descriptor_40_e9__16__0__8l;
    v46[4] = self;
    v10 = [CNFuture lazyFutureWithBlock:v46];
    [array addObject:v10];

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_6;
    v45[3] = &__block_descriptor_40_e9__16__0__8l;
    v45[4] = self;
    v11 = [CNFuture lazyFutureWithBlock:v45];
    [array addObject:v11];
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_7;
  v42[3] = &unk_1E6ED8068;
  selfCopy = self;
  v12 = localeCopy;
  v43 = v12;
  v13 = [CNFuture lazyFutureWithBlock:v42];
  [array addObject:v13];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_8;
  v39[3] = &unk_1E6ED8068;
  selfCopy2 = self;
  v14 = v12;
  v40 = v14;
  v15 = [CNFuture lazyFutureWithBlock:v39];
  [array addObject:v15];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_9;
  v36[3] = &unk_1E6ED8068;
  selfCopy3 = self;
  v16 = v14;
  v37 = v16;
  v17 = [CNFuture lazyFutureWithBlock:v36];
  [array addObject:v17];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_10;
  v33[3] = &unk_1E6ED8068;
  selfCopy4 = self;
  v18 = v16;
  v34 = v18;
  v19 = [CNFuture lazyFutureWithBlock:v33];
  [array addObject:v19];

  if ([self shouldUseIslamicSpecificFormattersForLocale:v18])
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_11;
    v30[3] = &unk_1E6ED8068;
    selfCopy5 = self;
    v20 = v18;
    v31 = v20;
    v21 = [CNFuture lazyFutureWithBlock:v30];
    [array addObject:v21];

    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_12;
    v27 = &unk_1E6ED8068;
    selfCopy6 = self;
    v28 = v20;
    v22 = [CNFuture lazyFutureWithBlock:&v24];
    [array addObject:{v22, v24, v25, v26, v27}];
  }

  return array;
}

id __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_11(uint64_t a1)
{
  v1 = [*(a1 + 40) shortDayMonthYearDateFormatterWithLocale:*(a1 + 32)];
  v2 = [v1 dateFormat];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"G" withString:&stru_1EF441028];
  [v1 setDateFormat:v3];

  [v1 setLenient:1];

  return v1;
}

id __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_12(uint64_t a1)
{
  v1 = [*(a1 + 40) longDayMonthYearDateFormatterWithLocale:*(a1 + 32)];
  v2 = [v1 dateFormat];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"G" withString:&stru_1EF441028];
  [v1 setDateFormat:v3];

  [v1 setLenient:1];

  return v1;
}

+ (id)chineseRelatedGregorianYearMonthDayFormatter
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinese"];
  v4 = [self dateFormatterWithYearFormat:@"r" hasLongFormat:0 locale:v3];

  [v4 setDateStyle:1];

  return v4;
}

+ (id)chineseMonthDayFormatter
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinese"];
  v4 = [self dateFormatterWithYearFormat:0 hasLongFormat:0 locale:v3];

  return v4;
}

+ (id)chineseMonthDayHanidayFormatter
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinesenumbers=hanidays"];;
  v4 = [self dateFormatterWithYearFormat:0 hasLongFormat:0 locale:v3];

  return v4;
}

+ (id)chineseRelatedGregorianYearMonthDayHanidayFormatter
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinesenumbers=hanidays"];;
  v4 = [self dateFormatterWithYearFormat:@"r" hasLongFormat:1 locale:v3];

  [v4 setDateStyle:2];

  return v4;
}

+ (id)chineseCyclicYearMonthDayFormatter
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinesenumbers=hanidays"];;
  v4 = [self dateFormatterWithYearFormat:@"U" hasLongFormat:0 locale:v3];

  date = [MEMORY[0x1E695DF00] date];
  [v4 setDefaultDate:date];

  return v4;
}

+ (id)chineseLongStyleRelatedGregorianYearMonthDayFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinese"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"r年M月d日"];

  return v2;
}

- (id)displayFormatterForComponents:(id)components
{
  componentsCopy = components;
  year = [componentsCopy year];
  calendar = [componentsCopy calendar];

  calendarIdentifier = [calendar calendarIdentifier];
  v8 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D828]];

  v9 = objc_opt_class();
  v10 = v9;
  if (v8)
  {
    if (year == 0x7FFFFFFFFFFFFFFFLL)
    {
      chineseMonthDayFormatter = [v9 chineseMonthDayFormatter];
    }

    else
    {
      chineseMonthDayFormatter = [v9 chineseRelatedGregorianYearMonthDayHanidayFormatter];
      [chineseMonthDayFormatter setDateStyle:3];
    }
  }

  else
  {
    locale = [(CNDateComponentsFormatter *)self locale];
    if (year == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 longDayMonthYearlessDateFormatterWithLocale:locale];
    }

    else
    {
      [v10 longDayMonthYearDateFormatterWithLocale:locale];
    }
    chineseMonthDayFormatter = ;
  }

  return chineseMonthDayFormatter;
}

- (id)stringFromDateComponents:(id)components
{
  if (components)
  {
    v4 = [(CNDateComponentsFormatter *)self stringForObjectValue:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dateComponentsFromString:(id)string
{
  if (string)
  {
    v8 = 0;
    v4 = [(CNDateComponentsFormatter *)self getObjectValue:&v8 forString:string errorDescription:0];
    v5 = v8;
    if (!v4)
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([valueCopy _cn_isEmpty])
    {
      v5 = &stru_1EF441028;
    }

    else
    {
      v7 = valueCopy;
      v8 = [(CNDateComponentsFormatter *)self displayFormatterForComponents:v7];
      calendar = [v7 calendar];
      calendar2 = [v8 calendar];
      v11 = [v7 copy];

      if (!calendar)
      {
        calendar = calendar2;
      }

      if ([v11 year] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v11 setYear:1604];
      }

      timeZone = [calendar2 timeZone];
      [v11 setTimeZone:timeZone];

      v13 = [calendar dateFromComponents:v11];
      v5 = [v8 stringForObjectValue:v13];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  v58 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy length])
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      [CNDateComponentsFormatter getObjectValue:stringCopy forString:os_log errorDescription:?];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = self->_lazyFormatterFutures;
    v10 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v44 = *v48;
      valueCopy = value;
      while (2)
      {
        v13 = 0;
        v14 = obj;
        do
        {
          if (*v48 != v44)
          {
            objc_enumerationMutation(v14);
          }

          v15 = [*(*(&v47 + 1) + 8 * v13) result:0];
          v46 = 0;
          v16 = [v15 getObjectValue:&v46 forString:stringCopy errorDescription:description];
          v17 = v46;

          os_log2 = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
          {
            locale = [v15 locale];
            localeIdentifier = [locale localeIdentifier];
            v38 = localeIdentifier;
            dateFormat = [v15 dateFormat];
            *buf = 138412802;
            v23 = @"failed";
            if (v16)
            {
              v23 = @"succeeded";
            }

            v52 = localeIdentifier;
            v53 = 2112;
            v54 = dateFormat;
            v24 = dateFormat;
            v55 = 2112;
            v56 = v23;
            _os_log_debug_impl(&dword_1859F0000, os_log2, OS_LOG_TYPE_DEBUG, "Parse attempt with locale:%@ date format: %@ %@", buf, 0x20u);

            v14 = obj;
          }

          if (v16)
          {
            v12 = v17;
LABEL_26:
            calendar = [v15 calendar];
            timeZone = [v15 timeZone];
            v30 = [(CNDateComponentsFormatter *)self normalizedComponentsFromDate:v12 calendar:calendar timeZone:timeZone];

            os_log3 = [objc_opt_class() os_log];
            if (os_log_type_enabled(os_log3, OS_LOG_TYPE_DEBUG))
            {
              [CNDateComponentsFormatter getObjectValue:v15 forString:v30 errorDescription:os_log3];
            }

            v31 = 1;
            value = valueCopy;
            goto LABEL_29;
          }

          [v15 setLenient:1];
          v45 = 0;
          v19 = [v15 getObjectValue:&v45 forString:stringCopy errorDescription:description];
          v12 = v45;

          os_log4 = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log4, OS_LOG_TYPE_DEBUG))
          {
            locale2 = [v15 locale];
            localeIdentifier2 = [locale2 localeIdentifier];
            v39 = localeIdentifier2;
            dateFormat2 = [v15 dateFormat];
            *buf = 138412802;
            v27 = @"failed";
            if (v19)
            {
              v27 = @"succeeded";
            }

            v52 = localeIdentifier2;
            v53 = 2112;
            v54 = dateFormat2;
            v28 = dateFormat2;
            v55 = 2112;
            v56 = v27;
            _os_log_debug_impl(&dword_1859F0000, os_log4, OS_LOG_TYPE_DEBUG, "Parse attempt with lenient option, locale:%@ date format: %@ %@", buf, 0x20u);

            v14 = obj;
          }

          if (v19)
          {
            goto LABEL_26;
          }

          ++v13;
        }

        while (v11 != v13);
        v29 = [(NSArray *)v14 countByEnumeratingWithState:&v47 objects:v57 count:16];
        v11 = v29;
        v30 = 0;
        v31 = 0;
        value = valueCopy;
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
      v30 = 0;
      v31 = 0;
    }

LABEL_29:

    if (value)
    {
      v35 = v30;
      *value = v30;
    }
  }

  else
  {
    v31 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)normalizedComponentsFromDate:(id)date calendar:(id)calendar timeZone:(id)zone
{
  zoneCopy = zone;
  calendarCopy = calendar;
  dateCopy = date;
  componentsToExtract = [(CNDateComponentsFormatter *)self componentsToExtract];
  v12 = [calendarCopy componentsInTimeZone:zoneCopy fromDate:dateCopy];

  v13 = [CNDateHelper dateComponentsFromDateComponents:v12 preservingUnits:componentsToExtract];

  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-1.25138736e10];
  v15 = [calendarCopy componentsInTimeZone:zoneCopy fromDate:v14];

  v16 = [CNDateHelper dateComponentsFromDateComponents:v15 preservingUnits:componentsToExtract];

  year = [v13 year];
  if (year == [v16 year] && (v18 = objc_msgSend(v13, "era"), v18 == objc_msgSend(v16, "era")))
  {
    year2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    year2 = [v13 year];
  }

  [v13 setYear:year2];

  return v13;
}

- (void)getObjectValue:(uint64_t)a1 forString:(NSObject *)a2 errorDescription:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Attempting to parse string: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)getObjectValue:(void *)a1 forString:(uint64_t)a2 errorDescription:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [a1 locale];
  v7 = [v6 localeIdentifier];
  v8 = [a1 dateFormat];
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = a2;
  _os_log_debug_impl(&dword_1859F0000, a3, OS_LOG_TYPE_DEBUG, "Locale: %@ Format %@ parsed successfully into date components %@", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end