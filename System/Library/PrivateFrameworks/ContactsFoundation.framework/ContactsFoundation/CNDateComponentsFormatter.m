@interface CNDateComponentsFormatter
+ (BOOL)shouldUseChinaSpecificFormattersForLocale:(id)a3;
+ (BOOL)shouldUseIslamicSpecificFormattersForLocale:(id)a3;
+ (id)chineseCyclicYearMonthDayFormatter;
+ (id)chineseLongStyleRelatedGregorianYearMonthDayFormatter;
+ (id)chineseMonthDayFormatter;
+ (id)chineseMonthDayHanidayFormatter;
+ (id)chineseRelatedGregorianYearMonthDayFormatter;
+ (id)chineseRelatedGregorianYearMonthDayHanidayFormatter;
+ (id)dateFormatterWithYearFormat:(id)a3 hasLongFormat:(BOOL)a4 locale:(id)a5;
+ (id)formatterFuturesWithLocale:(id)a3;
+ (id)os_log;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (BOOL)shouldUseArabicGregorianPlaceholderStringForLanguage:(id)a3;
- (BOOL)shouldUseArabicIslamicPlaceholderStringForLanguage:(id)a3;
- (BOOL)shouldUseChinesePlaceholderString;
- (CNDateComponentsFormatter)init;
- (id)dateComponentsFromString:(id)a3;
- (id)dateFormatPlaceholderString;
- (id)dateFormatPlaceholderStringForLanguage:(id)a3;
- (id)displayFormatterForComponents:(id)a3;
- (id)dmyFormatString;
- (id)normalizedComponentsFromDate:(id)a3 calendar:(id)a4 timeZone:(id)a5;
- (id)placeholderStringWithLocalizedDay:(id)a3 month:(id)a4 year:(id)a5;
- (id)placeholderSubstitutionStringWithDay:(unint64_t)a3 month:(unint64_t)a4 year:(unint64_t)a5;
- (id)stringForObjectValue:(id)a3;
- (id)stringFromDateComponents:(id)a3;
- (void)regenerateFormatterFutures;
- (void)setLocale:(id)a3;
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
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    locale = v2->_locale;
    v2->_locale = v3;

    [(CNDateComponentsFormatter *)v2 regenerateFormatterFutures];
  }

  return v2;
}

- (id)placeholderSubstitutionStringWithDay:(unint64_t)a3 month:(unint64_t)a4 year:(unint64_t)a5
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v9 setDay:a3];
  [v9 setMonth:a4];
  [v9 setYear:a5];
  v10 = [(CNDateComponentsFormatter *)self locale];
  v11 = [v10 objectForKey:*MEMORY[0x1E695D958]];
  v12 = [v11 dateFromComponents:v9];

  v13 = objc_opt_class();
  v14 = [(CNDateComponentsFormatter *)self locale];
  v15 = [v13 shortDayMonthYearDateFormatterWithLocale:v14];

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
    v5 = [(CNDateComponentsFormatter *)self locale];
    v6 = [v4 shortDayMonthYearDateFormatterWithLocale:v5];

    v7 = [v6 dateStyle];
    [v6 setDateStyle:1];
    v8 = [v6 dateFormat];
    [v6 setDateStyle:v7];
    v9 = [v8 lowercaseString];
    v10 = [v9 copy];
    v11 = self->_dateFormatPlaceholderString;
    self->_dateFormatPlaceholderString = v10;

    dateFormatPlaceholderString = self->_dateFormatPlaceholderString;
  }

  return dateFormatPlaceholderString;
}

- (id)dateFormatPlaceholderString
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 preferredLocalizations];
  v5 = [v4 firstObject];

  v6 = [(CNDateComponentsFormatter *)self dateFormatPlaceholderStringForLanguage:v5];

  return v6;
}

- (id)dateFormatPlaceholderStringForLanguage:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNDateComponentsFormatter *)self shouldUseArabicGregorianPlaceholderStringForLanguage:v4])
  {
    v5 = [(CNDateComponentsFormatter *)self arabicGregorianPlaceholderString];
LABEL_5:
    v6 = v5;
    goto LABEL_16;
  }

  if ([(CNDateComponentsFormatter *)self shouldUseArabicIslamicPlaceholderStringForLanguage:v4])
  {
    v5 = [(CNDateComponentsFormatter *)self arabicIslamicPlaceholderString];
    goto LABEL_5;
  }

  v7 = [(CNDateComponentsFormatter *)self locale];
  v8 = [v7 localeIdentifier];

  pErrorCode = U_ZERO_ERROR;
  [v8 UTF8String];
  udatpg_open();
  v22 = v8;
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

- (id)placeholderStringWithLocalizedDay:(id)a3 month:(id)a4 year:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CNDateComponentsFormatter *)self shouldUseChinesePlaceholderString])
  {
    v11 = [(CNDateComponentsFormatter *)self chinesePlaceholderStringWithDay:v8 month:v9 year:v10];
  }

  else
  {
    v11 = [(CNDateComponentsFormatter *)self placeholderSubstitutionStringWithDay:4 month:2 year:13];
    [v11 replaceOccurrencesOfString:@"0?4" withString:v8 options:1024 range:{0, objc_msgSend(v11, "length")}];
    [v11 replaceOccurrencesOfString:@"0?2" withString:v9 options:1024 range:{0, objc_msgSend(v11, "length")}];
    [v11 replaceOccurrencesOfString:@"13" withString:v10 options:1024 range:{0, objc_msgSend(v11, "length")}];
  }

  return v11;
}

- (BOOL)shouldUseChinesePlaceholderString
{
  v2 = [(CNDateComponentsFormatter *)self locale];
  v3 = [v2 objectForKey:*MEMORY[0x1E695D958]];
  v4 = [v3 calendarIdentifier];
  v5 = [v4 containsString:@"chinese"];

  return v5;
}

- (BOOL)shouldUseArabicGregorianPlaceholderStringForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(CNDateComponentsFormatter *)self locale];
  v6 = [v5 objectForKey:*MEMORY[0x1E695D958]];
  v7 = [v6 calendarIdentifier];
  v8 = [v7 containsString:@"gregorian"];

  LOBYTE(v5) = [v4 isEqualToString:@"ar"];
  return v8 & v5;
}

- (BOOL)shouldUseArabicIslamicPlaceholderStringForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(CNDateComponentsFormatter *)self locale];
  v6 = [v5 objectForKey:*MEMORY[0x1E695D958]];
  v7 = [v6 calendarIdentifier];
  v8 = [v7 containsString:@"islamic"];

  LOBYTE(v5) = [v4 isEqualToString:@"ar"];
  return v8 & v5;
}

+ (id)dateFormatterWithYearFormat:(id)a3 hasLongFormat:(BOOL)a4 locale:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = @"dM";
  if (v6)
  {
    v9 = @"dMMMM";
  }

  v10 = v9;
  v11 = v10;
  if (v7)
  {
    v12 = [(__CFString *)v10 stringByAppendingString:v7];

    v11 = v12;
  }

  v13 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:v11 options:0 locale:v8];
  v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v14 setLocale:v8];
  [v14 setDateFormat:v13];
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-1.25138736e10];
    [v14 setDefaultDate:v15];
  }

  return v14;
}

- (void)regenerateFormatterFutures
{
  v3 = objc_opt_class();
  v6 = [(CNDateComponentsFormatter *)self locale];
  v4 = [v3 formatterFuturesWithLocale:v6];
  lazyFormatterFutures = self->_lazyFormatterFutures;
  self->_lazyFormatterFutures = v4;
}

- (void)setLocale:(id)a3
{
  v5 = a3;
  if (self->_locale != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_locale, a3);
    [(CNDateComponentsFormatter *)self regenerateFormatterFutures];
    v5 = v6;
  }
}

+ (BOOL)shouldUseChinaSpecificFormattersForLocale:(id)a3
{
  v3 = [a3 objectForKey:*MEMORY[0x1E695D958]];
  v4 = [v3 calendarIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695D828]];

  return v5;
}

+ (BOOL)shouldUseIslamicSpecificFormattersForLocale:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695D880];
  v12[0] = *MEMORY[0x1E695D878];
  v12[1] = v3;
  v4 = *MEMORY[0x1E695D888];
  v12[2] = *MEMORY[0x1E695D890];
  v12[3] = v4;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = [v5 arrayWithObjects:v12 count:4];
  v8 = [v6 objectForKey:*MEMORY[0x1E695D958]];

  v9 = [v8 calendarIdentifier];
  LOBYTE(v5) = [v7 containsObject:v9];

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)formatterFuturesWithLocale:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if ([a1 shouldUseChinaSpecificFormattersForLocale:v4])
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke;
    v50[3] = &__block_descriptor_40_e9__16__0__8l;
    v50[4] = a1;
    v6 = [CNFuture lazyFutureWithBlock:v50];
    [v5 addObject:v6];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_2;
    v49[3] = &__block_descriptor_40_e9__16__0__8l;
    v49[4] = a1;
    v7 = [CNFuture lazyFutureWithBlock:v49];
    [v5 addObject:v7];

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_3;
    v48[3] = &__block_descriptor_40_e9__16__0__8l;
    v48[4] = a1;
    v8 = [CNFuture lazyFutureWithBlock:v48];
    [v5 addObject:v8];

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_4;
    v47[3] = &__block_descriptor_40_e9__16__0__8l;
    v47[4] = a1;
    v9 = [CNFuture lazyFutureWithBlock:v47];
    [v5 addObject:v9];

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_5;
    v46[3] = &__block_descriptor_40_e9__16__0__8l;
    v46[4] = a1;
    v10 = [CNFuture lazyFutureWithBlock:v46];
    [v5 addObject:v10];

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_6;
    v45[3] = &__block_descriptor_40_e9__16__0__8l;
    v45[4] = a1;
    v11 = [CNFuture lazyFutureWithBlock:v45];
    [v5 addObject:v11];
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_7;
  v42[3] = &unk_1E6ED8068;
  v44 = a1;
  v12 = v4;
  v43 = v12;
  v13 = [CNFuture lazyFutureWithBlock:v42];
  [v5 addObject:v13];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_8;
  v39[3] = &unk_1E6ED8068;
  v41 = a1;
  v14 = v12;
  v40 = v14;
  v15 = [CNFuture lazyFutureWithBlock:v39];
  [v5 addObject:v15];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_9;
  v36[3] = &unk_1E6ED8068;
  v38 = a1;
  v16 = v14;
  v37 = v16;
  v17 = [CNFuture lazyFutureWithBlock:v36];
  [v5 addObject:v17];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_10;
  v33[3] = &unk_1E6ED8068;
  v35 = a1;
  v18 = v16;
  v34 = v18;
  v19 = [CNFuture lazyFutureWithBlock:v33];
  [v5 addObject:v19];

  if ([a1 shouldUseIslamicSpecificFormattersForLocale:v18])
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_11;
    v30[3] = &unk_1E6ED8068;
    v32 = a1;
    v20 = v18;
    v31 = v20;
    v21 = [CNFuture lazyFutureWithBlock:v30];
    [v5 addObject:v21];

    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __56__CNDateComponentsFormatter_formatterFuturesWithLocale___block_invoke_12;
    v27 = &unk_1E6ED8068;
    v29 = a1;
    v28 = v20;
    v22 = [CNFuture lazyFutureWithBlock:&v24];
    [v5 addObject:{v22, v24, v25, v26, v27}];
  }

  return v5;
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
  v4 = [a1 dateFormatterWithYearFormat:@"r" hasLongFormat:0 locale:v3];

  [v4 setDateStyle:1];

  return v4;
}

+ (id)chineseMonthDayFormatter
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinese"];
  v4 = [a1 dateFormatterWithYearFormat:0 hasLongFormat:0 locale:v3];

  return v4;
}

+ (id)chineseMonthDayHanidayFormatter
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinesenumbers=hanidays"];;
  v4 = [a1 dateFormatterWithYearFormat:0 hasLongFormat:0 locale:v3];

  return v4;
}

+ (id)chineseRelatedGregorianYearMonthDayHanidayFormatter
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinesenumbers=hanidays"];;
  v4 = [a1 dateFormatterWithYearFormat:@"r" hasLongFormat:1 locale:v3];

  [v4 setDateStyle:2];

  return v4;
}

+ (id)chineseCyclicYearMonthDayFormatter
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh@calendar=chinesenumbers=hanidays"];;
  v4 = [a1 dateFormatterWithYearFormat:@"U" hasLongFormat:0 locale:v3];

  v5 = [MEMORY[0x1E695DF00] date];
  [v4 setDefaultDate:v5];

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

- (id)displayFormatterForComponents:(id)a3
{
  v4 = a3;
  v5 = [v4 year];
  v6 = [v4 calendar];

  v7 = [v6 calendarIdentifier];
  v8 = [v7 isEqualToString:*MEMORY[0x1E695D828]];

  v9 = objc_opt_class();
  v10 = v9;
  if (v8)
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v9 chineseMonthDayFormatter];
    }

    else
    {
      v11 = [v9 chineseRelatedGregorianYearMonthDayHanidayFormatter];
      [v11 setDateStyle:3];
    }
  }

  else
  {
    v12 = [(CNDateComponentsFormatter *)self locale];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 longDayMonthYearlessDateFormatterWithLocale:v12];
    }

    else
    {
      [v10 longDayMonthYearDateFormatterWithLocale:v12];
    }
    v11 = ;
  }

  return v11;
}

- (id)stringFromDateComponents:(id)a3
{
  if (a3)
  {
    v4 = [(CNDateComponentsFormatter *)self stringForObjectValue:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dateComponentsFromString:(id)a3
{
  if (a3)
  {
    v8 = 0;
    v4 = [(CNDateComponentsFormatter *)self getObjectValue:&v8 forString:a3 errorDescription:0];
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

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v4 _cn_isEmpty])
    {
      v5 = &stru_1EF441028;
    }

    else
    {
      v7 = v4;
      v8 = [(CNDateComponentsFormatter *)self displayFormatterForComponents:v7];
      v9 = [v7 calendar];
      v10 = [v8 calendar];
      v11 = [v7 copy];

      if (!v9)
      {
        v9 = v10;
      }

      if ([v11 year] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v11 setYear:1604];
      }

      v12 = [v10 timeZone];
      [v11 setTimeZone:v12];

      v13 = [v9 dateFromComponents:v11];
      v5 = [v8 stringForObjectValue:v13];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if ([v8 length])
  {
    v9 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CNDateComponentsFormatter getObjectValue:v8 forString:v9 errorDescription:?];
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
      v42 = a3;
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
          v16 = [v15 getObjectValue:&v46 forString:v8 errorDescription:a5];
          v17 = v46;

          v18 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v40 = [v15 locale];
            v21 = [v40 localeIdentifier];
            v38 = v21;
            v22 = [v15 dateFormat];
            *buf = 138412802;
            v23 = @"failed";
            if (v16)
            {
              v23 = @"succeeded";
            }

            v52 = v21;
            v53 = 2112;
            v54 = v22;
            v24 = v22;
            v55 = 2112;
            v56 = v23;
            _os_log_debug_impl(&dword_1859F0000, v18, OS_LOG_TYPE_DEBUG, "Parse attempt with locale:%@ date format: %@ %@", buf, 0x20u);

            v14 = obj;
          }

          if (v16)
          {
            v12 = v17;
LABEL_26:
            v32 = [v15 calendar];
            v33 = [v15 timeZone];
            v30 = [(CNDateComponentsFormatter *)self normalizedComponentsFromDate:v12 calendar:v32 timeZone:v33];

            v34 = [objc_opt_class() os_log];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [CNDateComponentsFormatter getObjectValue:v15 forString:v30 errorDescription:v34];
            }

            v31 = 1;
            a3 = v42;
            goto LABEL_29;
          }

          [v15 setLenient:1];
          v45 = 0;
          v19 = [v15 getObjectValue:&v45 forString:v8 errorDescription:a5];
          v12 = v45;

          v20 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v41 = [v15 locale];
            v25 = [v41 localeIdentifier];
            v39 = v25;
            v26 = [v15 dateFormat];
            *buf = 138412802;
            v27 = @"failed";
            if (v19)
            {
              v27 = @"succeeded";
            }

            v52 = v25;
            v53 = 2112;
            v54 = v26;
            v28 = v26;
            v55 = 2112;
            v56 = v27;
            _os_log_debug_impl(&dword_1859F0000, v20, OS_LOG_TYPE_DEBUG, "Parse attempt with lenient option, locale:%@ date format: %@ %@", buf, 0x20u);

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
        a3 = v42;
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

    if (a3)
    {
      v35 = v30;
      *a3 = v30;
    }
  }

  else
  {
    v31 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)normalizedComponentsFromDate:(id)a3 calendar:(id)a4 timeZone:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CNDateComponentsFormatter *)self componentsToExtract];
  v12 = [v9 componentsInTimeZone:v8 fromDate:v10];

  v13 = [CNDateHelper dateComponentsFromDateComponents:v12 preservingUnits:v11];

  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-1.25138736e10];
  v15 = [v9 componentsInTimeZone:v8 fromDate:v14];

  v16 = [CNDateHelper dateComponentsFromDateComponents:v15 preservingUnits:v11];

  v17 = [v13 year];
  if (v17 == [v16 year] && (v18 = objc_msgSend(v13, "era"), v18 == objc_msgSend(v16, "era")))
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = [v13 year];
  }

  [v13 setYear:v19];

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