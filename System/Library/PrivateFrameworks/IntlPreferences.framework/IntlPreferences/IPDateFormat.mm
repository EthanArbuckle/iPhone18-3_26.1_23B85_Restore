@interface IPDateFormat
+ (BOOL)dateFormatIsAllNumeric:(id)numeric;
+ (double)sampleTime;
+ (id)availableDateFormats;
+ (id)currentDateFormat;
+ (id)dateFormatFromFormatter:(id)formatter style:(unint64_t)style;
+ (id)dateFormatterFromLanguage;
+ (id)dateFormatterFromLocale;
+ (void)setDateFormat:(id)format;
- (IPDateFormat)initWithOption:(id)option title:(id)title;
@end

@implementation IPDateFormat

- (IPDateFormat)initWithOption:(id)option title:(id)title
{
  optionCopy = option;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = IPDateFormat;
  v9 = [(IPDateFormat *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_option, option);
    objc_storeStrong(&v10->_title, title);
  }

  return v10;
}

+ (double)sampleTime
{
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  if (systemTimeZone)
  {
    v3 = objc_alloc(MEMORY[0x277CBEA80]);
    v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    [v4 setTimeZone:systemTimeZone];
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [v4 components:-1 fromDate:date];

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
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:localeIdentifier];
  [v2 setLocale:v6];

  [v2 setDateStyle:1];

  return v2;
}

+ (id)dateFormatterFromLanguage
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  localeFromDeviceLanguage = [self localeFromDeviceLanguage];
  [v3 setLocale:localeFromDeviceLanguage];

  [v3 setDateStyle:1];

  return v3;
}

+ (id)dateFormatFromFormatter:(id)formatter style:(unint64_t)style
{
  formatterCopy = formatter;
  [formatterCopy setDateStyle:style];
  dateFormat = [formatterCopy dateFormat];

  return dateFormat;
}

+ (id)availableDateFormats
{
  v44 = *MEMORY[0x277D85DE8];
  dateFormatterFromLocale = [self dateFormatterFromLocale];
  dateFormatterFromLanguage = [self dateFormatterFromLanguage];
  array = [MEMORY[0x277CBEB18] array];
  v6 = [IPDateFormat alloc];
  v7 = MEMORY[0x277CBEAA8];
  selfCopy = self;
  [self sampleTime];
  v8 = [v7 dateWithTimeIntervalSince1970:?];
  v9 = [dateFormatterFromLocale stringFromDate:v8];
  v10 = [(IPDateFormat *)v6 initWithOption:@"locale" title:v9];

  v38 = array;
  v34 = v10;
  [array addObject:v10];
  v11 = MEMORY[0x277CBEB58];
  v35 = dateFormatterFromLocale;
  dateFormat = [dateFormatterFromLocale dateFormat];
  v13 = [v11 setWithObject:dateFormat];

  v36 = dateFormatterFromLanguage;
  dateFormat2 = [dateFormatterFromLanguage dateFormat];
  LOBYTE(v9) = [v13 containsObject:dateFormat2];

  if ((v9 & 1) == 0)
  {
    v15 = [IPDateFormat alloc];
    v16 = MEMORY[0x277CBEAA8];
    [selfCopy sampleTime];
    v17 = [v16 dateWithTimeIntervalSince1970:?];
    v18 = [dateFormatterFromLanguage stringFromDate:v17];
    v19 = [(IPDateFormat *)v15 initWithOption:@"language" title:v18];

    [array addObject:v19];
    dateFormat3 = [dateFormatterFromLanguage dateFormat];
    [v13 addObject:dateFormat3];
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
          [selfCopy sampleTime];
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
  dateFormat = [v3 dateFormat];
  dateFormatterFromLocale = [self dateFormatterFromLocale];
  dateFormat2 = [dateFormatterFromLocale dateFormat];
  v7 = [dateFormat isEqualToString:dateFormat2];

  if (v7)
  {
    v8 = IPFormatOptionLocale;
LABEL_5:
    dateFormat5 = *v8;
    goto LABEL_7;
  }

  dateFormat3 = [v3 dateFormat];
  dateFormatterFromLanguage = [self dateFormatterFromLanguage];
  dateFormat4 = [dateFormatterFromLanguage dateFormat];
  v12 = [dateFormat3 isEqualToString:dateFormat4];

  if (v12)
  {
    v8 = IPFormatOptionLanguage;
    goto LABEL_5;
  }

  dateFormat5 = [v3 dateFormat];
LABEL_7:
  v14 = dateFormat5;

  return v14;
}

+ (void)setDateFormat:(id)format
{
  v29[4] = *MEMORY[0x277D85DE8];
  formatCopy = format;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([formatCopy isEqualToString:@"language"])
  {
    dateFormatterFromLanguage = [self dateFormatterFromLanguage];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 1];
    v28[0] = v22;
    v7 = [self dateFormatFromFormatter:dateFormatterFromLanguage style:1];
    v29[0] = v7;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 2];
    v28[1] = v8;
    [self dateFormatFromFormatter:dateFormatterFromLanguage style:2];
    v9 = v23 = standardUserDefaults;
    v29[1] = v9;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 3];
    v28[2] = v10;
    v11 = [self dateFormatFromFormatter:dateFormatterFromLanguage style:3];
    v29[2] = v11;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 4];
    v28[3] = v12;
    v13 = [self dateFormatFromFormatter:dateFormatterFromLanguage style:4];
    v29[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

    standardUserDefaults = v23;
  }

  else
  {
    if (![&unk_2841A24E8 containsObject:formatCopy])
    {
      [standardUserDefaults removeObjectForKey:@"AppleICUDateFormatStrings" inDomain:*MEMORY[0x277CCA208]];
      goto LABEL_8;
    }

    dateFormatterFromLanguage = [self dateFormatterFromLocale];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 1];
    v26 = v15;
    v27 = formatCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v16 = [self dateFormatFromFormatter:dateFormatterFromLanguage style:2];
    v17 = [self dateFormatIsAllNumeric:v16];

    if (v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 1];
      v24[0] = v18;
      v25[0] = formatCopy;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd", 2];
      v24[1] = v19;
      v25[1] = formatCopy;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

      v14 = v20;
    }
  }

  [standardUserDefaults setObject:v14 forKey:@"AppleICUDateFormatStrings" inDomain:*MEMORY[0x277CCA208]];

LABEL_8:
  v21 = *MEMORY[0x277D85DE8];
}

+ (BOOL)dateFormatIsAllNumeric:(id)numeric
{
  numericCopy = numeric;
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
  v4 = [numericCopy length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__IPDateFormat_dateFormatIsAllNumeric___block_invoke;
  v8[3] = &unk_2787A9020;
  v8[4] = &v13;
  v8[5] = &v21;
  v8[6] = &v9;
  v8[7] = &v17;
  [numericCopy _enumerateLongCharactersInRange:0 usingBlock:{v4, v8}];
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