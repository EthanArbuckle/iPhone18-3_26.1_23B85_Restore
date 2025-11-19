@interface NSDateComponents(ContactsFoundation)
+ (id)_cn_dateComponentsFromDictionary:()ContactsFoundation;
- (id)_cn_dictionaryRepresentation;
@end

@implementation NSDateComponents(ContactsFoundation)

- (id)_cn_dictionaryRepresentation
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "era")}];
  [v2 setObject:v3 forKeyedSubscript:__CNDateComponentEra];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "year")}];
  [v2 setObject:v4 forKeyedSubscript:__CNDateComponentYear];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "month")}];
  [v2 setObject:v5 forKeyedSubscript:__CNDateComponentMonth];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "day")}];
  [v2 setObject:v6 forKeyedSubscript:__CNDateComponentDay];

  v7 = [a1 calendar];
  v8 = [v7 calendarIdentifier];
  [v2 setObject:v8 forKeyedSubscript:__CNDateComponentCalendarIdentifier];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isLeapMonth")}];
  [v2 setObject:v9 forKeyedSubscript:__CNIsLeapMonthKey];

  return v2;
}

+ (id)_cn_dateComponentsFromDictionary:()ContactsFoundation
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v5 = [v3 objectForKeyedSubscript:__CNDateComponentCalendarIdentifier];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v5];
    if (v6)
    {
      v7 = v6;
      v8 = v5;
    }

    else
    {
      v8 = [v5 lowercaseString];

      v9 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v8];
      if (!v9)
      {
        v5 = 0;
        goto LABEL_7;
      }

      v7 = v9;
    }

    v10 = [v3 objectForKeyedSubscript:__CNDateComponentEra];
    [v4 setEra:{objc_msgSend(v10, "integerValue")}];

    v11 = [v3 objectForKeyedSubscript:__CNDateComponentYear];
    [v4 setYear:{objc_msgSend(v11, "integerValue")}];

    v12 = [v3 objectForKeyedSubscript:__CNDateComponentMonth];
    [v4 setMonth:{objc_msgSend(v12, "integerValue")}];

    v13 = [v3 objectForKeyedSubscript:__CNDateComponentDay];
    [v4 setDay:{objc_msgSend(v13, "integerValue")}];

    v14 = [v3 objectForKeyedSubscript:__CNIsLeapMonthKey];
    [v4 setLeapMonth:{objc_msgSend(v14, "BOOLValue")}];
    v5 = v4;

LABEL_7:
  }

  return v5;
}

@end