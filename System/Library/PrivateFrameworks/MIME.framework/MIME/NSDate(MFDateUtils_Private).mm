@interface NSDate(MFDateUtils_Private)
+ (id)mf_copyLenientDateInCommonFormatsWithString:()MFDateUtils_Private;
@end

@implementation NSDate(MFDateUtils_Private)

+ (id)mf_copyLenientDateInCommonFormatsWithString:()MFDateUtils_Private
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [(__CFString *)v3 length];
  if (v4)
  {
    v6 = [(__CFString *)v3 rangeOfString:@"UT" options:12];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v5;
      MutableCopy = CFStringCreateMutableCopy(0, v4 + 1, v3);
      v27.location = v6;
      v27.length = v7;
      CFStringReplace(MutableCopy, v27, @"UTC");

      v3 = MutableCopy;
    }

    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    ef_posixLocale = [MEMORY[0x1E695DF58] ef_posixLocale];
    [v9 setLocale:ef_posixLocale];

    date = [MEMORY[0x1E695DF00] date];
    [v9 setDefaultDate:date];

    v12 = 0;
    while (1)
    {
      [v9 setDateFormat:*(&commonFormats + v12)];
      v13 = [v9 dateFromString:v3];
      if (v13)
      {
        break;
      }

      v14 = v12 >= 0x10;
      v12 += 8;
      if (v14)
      {
        v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v15 setFormatterBehavior:1040];
        [v15 setLenient:1];
        date2 = [MEMORY[0x1E695DF00] date];
        [v15 setDefaultDate:date2];

        v13 = [v15 dateFromString:v3];

        if (!v13)
        {
          v17 = 0;
          do
          {
            [v9 setDateFormat:*(&otherFormats + v17)];
            v18 = [v9 dateFromString:v3];
            v13 = v18;
            if (v18)
            {
              break;
            }

            v14 = v17 >= 0x68;
            v17 += 8;
          }

          while (!v14);
          if (!v18)
          {
            v19 = MFLogGeneral();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v23 = 138412290;
              v24 = v3;
              _os_log_impl(&dword_1D36B2000, v19, OS_LOG_TYPE_INFO, "Unable to parse date (%@)", &v23, 0xCu);
            }

            v13 = 0;
          }
        }

        break;
      }
    }

    v20 = v13;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end