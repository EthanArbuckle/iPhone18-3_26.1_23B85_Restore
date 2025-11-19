@interface NSMutableString(CalendarExtensions)
- (void)replaceOccurrencesOfString:()CalendarExtensions withString:;
- (void)searchAndReplaceInString:()CalendarExtensions withString:;
@end

@implementation NSMutableString(CalendarExtensions)

- (void)replaceOccurrencesOfString:()CalendarExtensions withString:
{
  v6 = a4;
  v7 = a3;
  [a1 replaceOccurrencesOfString:v7 withString:v6 options:0 range:{0, objc_msgSend(a1, "length")}];
}

- (void)searchAndReplaceInString:()CalendarExtensions withString:
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:a1];
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v8 setCharactersToBeSkipped:0];
  if ([v8 scanString:v6 intoString:0])
  {
    [v9 appendString:v7];
  }

  v15 = 0;
  v10 = [v8 scanUpToString:v6 intoString:&v15];
  v11 = v15;
  v12 = v11;
  if (v10)
  {
    do
    {
      [v9 appendString:v12];
      if ([v8 scanString:v6 intoString:0])
      {
        [v9 appendString:v7];
      }

      v15 = v12;
      v13 = [v8 scanUpToString:v6 intoString:&v15];
      v14 = v15;

      v12 = v14;
    }

    while ((v13 & 1) != 0);
  }

  else
  {
    v14 = v11;
  }

  [a1 setString:v9];
}

@end