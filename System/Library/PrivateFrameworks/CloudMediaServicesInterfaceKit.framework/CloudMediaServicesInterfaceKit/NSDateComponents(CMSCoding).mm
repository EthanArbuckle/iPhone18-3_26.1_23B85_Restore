@interface NSDateComponents(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation NSDateComponents(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = v3;
      [v4 setEra:{objc_msgSend(v10, "cmsIntegerForKey:withDefault:", @"era", objc_msgSend(v4, "era"))}];
      [v4 setYear:{objc_msgSend(v10, "cmsIntegerForKey:withDefault:", @"year", objc_msgSend(v4, "year"))}];
      [v4 setMonth:{objc_msgSend(v10, "cmsIntegerForKey:withDefault:", @"month", objc_msgSend(v4, "month"))}];
      [v4 setDay:{objc_msgSend(v10, "cmsIntegerForKey:withDefault:", @"day", objc_msgSend(v4, "day"))}];
      [v4 setHour:{objc_msgSend(v10, "cmsIntegerForKey:withDefault:", @"hour", objc_msgSend(v4, "hour"))}];
      [v4 setMinute:{objc_msgSend(v10, "cmsIntegerForKey:withDefault:", @"minute", objc_msgSend(v4, "minute"))}];
      [v4 setSecond:{objc_msgSend(v10, "cmsIntegerForKey:withDefault:", @"second", objc_msgSend(v4, "second"))}];
      v11 = MEMORY[0x277CBEBB0];
      v5 = [v10 cmsOptionalStringForKey:@"timeZone"];

      v7 = [v11 timeZoneWithName:v5];
      [v4 setTimeZone:v7];
      goto LABEL_15;
    }

    v5 = v3;
    v6 = cmsDateFormatter();
    v7 = [v6 dateFromString:v5];

    if (v7)
    {
      v8 = cmsDateCalender();
      [v8 components:2130174 fromDate:v7];
      v4 = v9 = v4;
    }

    else
    {
      v8 = [v5 componentsSeparatedByString:@"-"];
      v12 = [v8 count];
      if (v12 != 1)
      {
        if (v12 != 2)
        {
          if (v12 != 3)
          {
LABEL_14:

LABEL_15:
            goto LABEL_16;
          }

          v13 = [v8 objectAtIndexedSubscript:2];
          [v4 setDay:{objc_msgSend(v13, "integerValue")}];
        }

        v14 = [v8 objectAtIndexedSubscript:1];
        [v4 setMonth:{objc_msgSend(v14, "integerValue")}];
      }

      v9 = [v8 objectAtIndexedSubscript:0];
      [v4 setYear:{objc_msgSend(v9, "integerValue")}];
    }

    goto LABEL_14;
  }

LABEL_16:
  v15 = cmsDateCalender();
  [v4 setCalendar:v15];

  return v4;
}

- (id)cmsCoded
{
  v25 = [a1 era];
  v2 = [a1 year];
  v30 = [a1 month];
  v29 = [a1 day];
  v26 = [a1 hour];
  v27 = [a1 minute];
  v28 = [a1 second];
  v3 = [a1 nanosecond];
  v4 = (2 * (v25 != 0x7FFFFFFFFFFFFFFFLL)) | (4 * (v2 != 0x7FFFFFFFFFFFFFFFLL)) | (8 * (v30 != 0x7FFFFFFFFFFFFFFFLL)) | (16 * (v29 != 0x7FFFFFFFFFFFFFFFLL)) | (32 * (v26 != 0x7FFFFFFFFFFFFFFFLL)) | ((v27 != 0x7FFFFFFFFFFFFFFFLL) << 6) | ((v28 != 0x7FFFFFFFFFFFFFFFLL) << 7);
  v5 = v4 | ((v3 != 0x7FFFFFFFFFFFFFFFLL) << 15);
  switch(v5)
  {
    case 0x1CuLL:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%04d-%02d-%02d", v2, v30, v29];
      goto LABEL_7;
    case 0xCuLL:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%04d-%02d", v2, v30, v24];
      goto LABEL_7;
    case 4uLL:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%04d", v2, v23, v24];
      v6 = LABEL_7:;
      goto LABEL_8;
  }

  if ((v4 & 0xFFFFFFFFFFFF7FFFLL) == 0xFC)
  {
    v8 = cmsDateFormatter();
    v9 = [a1 date];
    v6 = [v8 stringFromDate:v9];

    goto LABEL_8;
  }

  v10 = v3;
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  v11 = [a1 calendar];
  v12 = [a1 timeZone];
  if (v11)
  {
    v13 = [v11 calendarIdentifier];
    [v6 setValue:v13 forKey:@"calendarIdentifier"];
  }

  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v14 forKey:@"era"];
  }

  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    [v6 setValue:v15 forKey:@"year"];
  }

  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v16 forKey:@"month"];
  }

  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v17 forKey:@"day"];
  }

  if (v26 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v18 forKey:@"hour"];
  }

  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v6 setValue:v19 forKey:@"minute"];
  }

  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    [v6 setValue:v22 forKey:@"nanosecond"];

    if (v12)
    {
      goto LABEL_30;
    }

LABEL_33:
    [v6 setValue:@"UTC" forKey:@"timeZone"];
    goto LABEL_34;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [v6 setValue:v21 forKey:@"second"];

  if ((v5 & 0x8000) != 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_30:
  v20 = [v12 name];
  [v6 setValue:v20 forKey:@"timeZone"];

LABEL_34:
LABEL_8:

  return v6;
}

@end