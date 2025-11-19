@interface NSDate(CATInternetDateAndTime)
+ (id)cat_RFC3339Formatters;
+ (id)cat_dateWithInternetTimeString:()CATInternetDateAndTime;
- (id)cat_internetTimeString;
@end

@implementation NSDate(CATInternetDateAndTime)

+ (id)cat_RFC3339Formatters
{
  if (cat_RFC3339Formatters_onceToken != -1)
  {
    +[NSDate(CATInternetDateAndTime) cat_RFC3339Formatters];
  }

  v1 = cat_RFC3339Formatters_RFC3339DateFormatters;

  return v1;
}

+ (id)cat_dateWithInternetTimeString:()CATInternetDateAndTime
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [MEMORY[0x277CBEAA8] cat_RFC3339Formatters];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) dateFromString:v3];
          if (v9)
          {
            v10 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)cat_internetTimeString
{
  v2 = [MEMORY[0x277CBEAA8] cat_RFC3339Formatters];
  v3 = [v2 firstObject];
  v4 = [v3 stringFromDate:a1];

  return v4;
}

@end