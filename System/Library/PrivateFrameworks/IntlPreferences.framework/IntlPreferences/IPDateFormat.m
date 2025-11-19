@interface IPDateFormat
+ (BOOL)dateFormatIsAllNumeric:(id)a3;
+ (double)sampleTime;
+ (id)availableDateFormats;
+ (id)currentDateFormat;
+ (id)dateFormatFromFormatter:(id)a3 style:(unint64_t)a4;
+ (id)dateFormatterFromLanguage;
+ (id)dateFormatterFromLocale;
+ (void)setDateFormat:(id)a3;
- (IPDateFormat)initWithOption:(id)a3 title:(id)a4;
@end

@implementation IPDateFormat

- (IPDateFormat)initWithOption:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IPDateFormat;
  v9 = [(IPDateFormat *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_option, a3);
    objc_storeStrong(&v10->_title, a4);
  }

  return v10;
}

+ (double)sampleTime
{
  v2 = [MEMORY[0x277CBEBB0] systemTimeZone];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEA80]);
    v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    [v4 setTimeZone:v2];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v4 components:-1 fromDate:v5];

    [v6 setHour:9];
    [v6 setMinute:41];
    [v6 setSecond:0];
    [v6 setMonth:8];
    [v6 setDay:19];
    v7 = [v4 dateFromComponents:v6];
    [v7 timeIntervalSince1970];
    v9 = v8;
  }

  else
  {
    v9 = 978307200.0;
  }

  return v9;
}

+ (id)dateFormatterFromLocale
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = MEMORY[0x277CBEAF8];
  v4 = [MEMORY[0x277CBEAF8] preferredLocale];
  v5 = [v4 localeIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:v5];
  [v2 setLocale:v6];

  [v2 setDateStyle:1];

  return v2;
}

+ (id)dateFormatterFromLanguage
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = [a1 localeFromDeviceLanguage];
  [v3 setLocale:v4];

  [v3 setDateStyle:1];

  return v3;
}

+ (id)dateFormatFromFormatter:(id)a3 style:(unint64_t)a4
{
  v5 = a3;
  [v5 setDateStyle:a4];
  v6 = [v5 dateFormat];

  return v6;
}

+ (id)availableDateFormats
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [a1 dateFormatterFromLocale];
  v4 = [a1 dateFormatterFromLanguage];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [IPDateFormat alloc];
  v7 = MEMORY[0x277CBEAA8];
  v37 = a1;
  [a1 sampleTime];
  v8 = [v7 dateWithTimeIntervalSince1970:?];
  v9 = [v3 stringFromDate:v8];
  v10 = [(IPDateFormat *)v6 initWithOption:@"locale" title:v9];

  v38 = v5;
  v34 = v10;
  [v5 addObject:v10];
  v11 = MEMORY[0x277CBEB58];
  v35 = v3;
  v12 = [v3 dateFormat];
  v13 = [v11 setWithObject:v12];

  v36 = v4;
  v14 = [v4 dateFormat];
  LOBYTE(v9) = [v13 containsObject:v14];

  if ((v9 & 1) == 0)
  {
    v15 = [IPDateFormat alloc];
    v16 = MEMORY[0x277CBEAA8];
    [v37 sampleTime];
    v17 = [v16 dateWithTimeIntervalSince1970:?];
    v18 = [v4 stringFromDate:v17];
    v19 = [(IPDateFormat *)v15 initWithOption:@"language" title:v18];

    [v5 addObject:v19];
    v20 = [v4 dateFormat];
    [v13 addObject:v20];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = [&unk_2841A24D0 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(&unk_2841A24D0);
        }

        v25 = *(*(&v39 + 1) + 8 * i);
        if (([v13 containsObject:v25] & 1) == 0)
        {
          v26 = objc_alloc_init(MEMORY[0x277CCA968]);
          [v26 setDateFormat:v25];
          v27 = [IPDateFormat alloc];
          v28 = MEMORY[0x277CBEAA8];
          [v37 sampleTime];
          v29 = [v28 dateWithTimeIntervalSince1970:?];
          v30 = [v26 stringFromDate:v29];
          v31 = [(IPDateFormat *)v27 initWithOption:v25 title:v30];

          [v38 addObject:v31];
          [v13 addObject:v25];
        }
      }

      v22 = [&unk_2841A24D0 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v22);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)currentDateFormat
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateStyle:1];
  v4 = [v3 dateFormat];
  v5 = [a1 dateFormatterFromLocale];
  v6 = [v5 dateFormat];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = IPFormatOptionLocale;
LABEL_5:
    v13 = *v8;
    goto LABEL_7;
  }

  v9 = [v3 dateFormat];
  v10 = [a1 dateFormatterFromLanguage];
  v11 = [v10 dateFormat];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v8 = IPFormatOptionLanguage;
    goto LABEL_5;
  }

  v13 = [v3 dateFormat];
LABEL_7:
  v14 = v13;

  return v14;
}

+ (void)setDateFormat:(id)a3
{
  v29[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v4 isEqualToString:@"language"])
  {
    v6 = [a1 dateFormatterFromLanguage];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 1];
    v28[0] = v22;
    v7 = [a1 dateFormatFromFormatter:v6 style:1];
    v29[0] = v7;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 2];
    v28[1] = v8;
    [a1 dateFormatFromFormatter:v6 style:2];
    v9 = v23 = v5;
    v29[1] = v9;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 3];
    v28[2] = v10;
    v11 = [a1 dateFormatFromFormatter:v6 style:3];
    v29[2] = v11;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 4];
    v28[3] = v12;
    v13 = [a1 dateFormatFromFormatter:v6 style:4];
    v29[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

    v5 = v23;
  }

  else
  {
    if (![&unk_2841A24E8 containsObject:v4])
    {
      [v5 removeObjectForKey:@"AppleICUDateFormatStrings" inDomain:*MEMORY[0x277CCA208]];
      goto LABEL_8;
    }

    v6 = [a1 dateFormatterFromLocale];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 1];
    v26 = v15;
    v27 = v4;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v16 = [a1 dateFormatFromFormatter:v6 style:2];
    v17 = [a1 dateFormatIsAllNumeric:v16];

    if (v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 1];
      v24[0] = v18;
      v25[0] = v4;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 2];
      v24[1] = v19;
      v25[1] = v4;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

      v14 = v20;
    }
  }

  [v5 setObject:v14 forKey:@"AppleICUDateFormatStrings" inDomain:*MEMORY[0x277CCA208]];

LABEL_8:
  v21 = *MEMORY[0x277D85DE8];
}

+ (BOOL)dateFormatIsAllNumeric:(id)a3
{
  v3 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [v3 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__IPDateFormat_dateFormatIsAllNumeric___block_invoke;
  v8[3] = &unk_2787A9020;
  v8[4] = &v13;
  v8[5] = &v21;
  v8[6] = &v9;
  v8[7] = &v17;
  [v3 _enumerateLongCharactersInRange:0 usingBlock:{v4, v8}];
  if (v10[3])
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v14 + 24);
    if (v22[3] > 0)
    {
      ++v6;
    }

    v5 = v6 + *(v18 + 24) > 1;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v5;
}

uint64_t __39__IPDateFormat_dateFormatIsAllNumeric___block_invoke(uint64_t result, UChar32 c, _BYTE *a3)
{
  v5 = result;
  v6 = (c - 76);
  if (v6 <= 0x2D)
  {
    if (((1 << (c - 76)) & 0x224000002000) != 0)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
      return result;
    }

    if (((1 << (c - 76)) & 3) != 0)
    {
      if (++*(*(*(result + 40) + 8) + 24) < 3)
      {
        return result;
      }

      goto LABEL_10;
    }

    if (v6 == 24)
    {
      *(*(*(result + 56) + 8) + 24) = 1;
      return result;
    }
  }

  result = u_isalpha(c);
  if (result)
  {
LABEL_10:
    *(*(*(v5 + 48) + 8) + 24) = 1;
    *a3 = 1;
    return result;
  }

  result = u_isspace(c);
  if (result)
  {
    if (c == 39)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = u_ispunct(c);
    v8 = c != 8207 && result == 0;
    if (c == 39 || v8)
    {
      goto LABEL_10;
    }
  }

  return result;
}

@end