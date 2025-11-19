@interface DateProcessor
+ (id)processDateMatch:(id)a3 originalString:(id)a4;
@end

@implementation DateProcessor

+ (id)processDateMatch:(id)a3 originalString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 date];
    if (v9 && [v5 underlyingResult])
    {
      v10 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      if ([v7 rangeOfCharacterFromSet:v10] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        [v5 underlyingResult];
        v11 = DDResultGetType();
        v12 = [v11 rangeOfString:@"Date"];
        v13 = [v11 rangeOfString:@"Time"];
        v14 = [v11 rangeOfString:@"Duration"];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL && v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = 0;
        }

        else
        {
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = 0;
          }

          else
          {
            v15 = [v5 timeIsSignificant];
            v16 = 224;
            if (!v15)
            {
              v16 = 0;
            }
          }

          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 | 0x1C;
          }

          v18 = [MEMORY[0x277CBEA80] currentCalendar];
          v19 = [v18 components:v17 fromDate:v9];
          if (v14 == 0x7FFFFFFFFFFFFFFFLL || ([v5 duration], v20 <= 0.0))
          {
            v23 = 0;
          }

          else
          {
            v21 = MEMORY[0x277CBEAA8];
            [v5 duration];
            v22 = [v21 dateWithTimeInterval:v9 sinceDate:?];
            v23 = [v18 components:v17 fromDate:v22];
          }

          v24 = [v5 timeZone];

          if (v24)
          {
            v25 = [v5 timeZone];
            [v19 setTimeZone:v25];

            v26 = [v5 timeZone];
            [v23 setTimeZone:v26];
          }

          v27 = [MEMORY[0x277CBEB38] dictionary];
          [v27 setObject:v9 forKeyedSubscript:@"date"];
          [v27 setObject:v19 forKeyedSubscript:@"startDateComponents"];
          [v27 setObject:v23 forKeyedSubscript:@"endDateComponents"];
          v8 = [v27 copy];
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end