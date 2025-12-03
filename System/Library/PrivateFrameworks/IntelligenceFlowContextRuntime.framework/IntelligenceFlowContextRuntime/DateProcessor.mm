@interface DateProcessor
+ (id)processDateMatch:(id)match originalString:(id)string;
@end

@implementation DateProcessor

+ (id)processDateMatch:(id)match originalString:(id)string
{
  matchCopy = match;
  stringCopy = string;
  v7 = stringCopy;
  v8 = 0;
  if (matchCopy && stringCopy)
  {
    date = [matchCopy date];
    if (date && [matchCopy underlyingResult])
    {
      decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      if ([v7 rangeOfCharacterFromSet:decimalDigitCharacterSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        [matchCopy underlyingResult];
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
            timeIsSignificant = [matchCopy timeIsSignificant];
            v16 = 224;
            if (!timeIsSignificant)
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

          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          v19 = [currentCalendar components:v17 fromDate:date];
          if (v14 == 0x7FFFFFFFFFFFFFFFLL || ([matchCopy duration], v20 <= 0.0))
          {
            v23 = 0;
          }

          else
          {
            v21 = MEMORY[0x277CBEAA8];
            [matchCopy duration];
            v22 = [v21 dateWithTimeInterval:date sinceDate:?];
            v23 = [currentCalendar components:v17 fromDate:v22];
          }

          timeZone = [matchCopy timeZone];

          if (timeZone)
          {
            timeZone2 = [matchCopy timeZone];
            [v19 setTimeZone:timeZone2];

            timeZone3 = [matchCopy timeZone];
            [v23 setTimeZone:timeZone3];
          }

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:date forKeyedSubscript:@"date"];
          [dictionary setObject:v19 forKeyedSubscript:@"startDateComponents"];
          [dictionary setObject:v23 forKeyedSubscript:@"endDateComponents"];
          v8 = [dictionary copy];
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