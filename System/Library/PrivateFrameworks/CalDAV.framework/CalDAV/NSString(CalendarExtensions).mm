@interface NSString(CalendarExtensions)
+ (id)stringWithFileSystemRepresentation:()CalendarExtensions;
- (id)appendSlashIfNeeded;
- (id)quote;
- (id)removeSlashIfNeeded;
- (id)searchAndReplaceString:()CalendarExtensions withString:;
- (id)trimChar:()CalendarExtensions;
- (id)trimCommas;
- (id)trimFinalChar:()CalendarExtensions;
- (id)trimFinalComma;
- (id)trimFirstChar:()CalendarExtensions;
- (id)trimFirstComma;
- (id)trimWhiteSpace;
- (id)unquote;
@end

@implementation NSString(CalendarExtensions)

- (id)quote
{
  if ([a1 rangeOfString:@""] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = a1;
  }

  else
  {
    v2 = [MEMORY[0x277CCAB68] stringWithString:a1];
    [v2 replaceOccurrencesOfString:@" withString:@"'" options:2 range:{0, objc_msgSend(v2, "length"")}];
  }

  return v2;
}

- (id)trimWhiteSpace
{
  v1 = [a1 mutableCopy];
  CFStringTrimWhitespace(v1);
  v2 = [(__CFString *)v1 copy];

  return v2;
}

- (id)trimFinalComma
{
  if ([a1 length] && objc_msgSend(a1, "characterAtIndex:", objc_msgSend(a1, "length") - 1) == 44)
  {
    v2 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)trimFirstComma
{
  if ([a1 length] && objc_msgSend(a1, "characterAtIndex:", 0) == 44)
  {
    v2 = [a1 substringFromIndex:1];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)trimCommas
{
  v1 = [a1 trimFirstComma];
  v2 = [v1 trimFinalComma];

  return v2;
}

- (id)trimFinalChar:()CalendarExtensions
{
  if ([a1 length] && objc_msgSend(a1, "characterAtIndex:", objc_msgSend(a1, "length") - 1) == a3)
  {
    v5 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)trimFirstChar:()CalendarExtensions
{
  if ([a1 length] && objc_msgSend(a1, "characterAtIndex:", 0) == a3)
  {
    v5 = [a1 substringFromIndex:1];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)trimChar:()CalendarExtensions
{
  v4 = [a1 trimFirstChar:?];
  v5 = [v4 trimFinalChar:a3];

  return v5;
}

- (id)unquote
{
  if ([a1 rangeOfString:@"\\""] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = a1;
  }

  else
  {
    v2 = [MEMORY[0x277CCAB68] stringWithString:a1];
    [v2 replaceOccurrencesOfString:@"\ withString:@" options:2 range:{0, objc_msgSend(v2, "length")}];
  }

  return v2;
}

- (id)searchAndReplaceString:()CalendarExtensions withString:
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

  v16 = 0;
  v10 = [v8 scanUpToString:v6 intoString:&v16];
  v11 = v16;
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

      v16 = v12;
      v13 = [v8 scanUpToString:v6 intoString:&v16];
      v14 = v16;

      v12 = v14;
    }

    while ((v13 & 1) != 0);
  }

  else
  {
    v14 = v11;
  }

  return v9;
}

+ (id)stringWithFileSystemRepresentation:()CalendarExtensions
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 stringWithFileSystemRepresentation:a3 length:strlen(a3)];

  return v5;
}

- (id)removeSlashIfNeeded
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)appendSlashIfNeeded
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 stringByAppendingString:@"/"];
  }

  return v2;
}

@end