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
  if ([self rangeOfString:@""] == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [MEMORY[0x277CCAB68] stringWithString:self];
    [selfCopy replaceOccurrencesOfString:@" withString:@"'" options:2 range:{0, objc_msgSend(selfCopy, "length"")}];
  }

  return selfCopy;
}

- (id)trimWhiteSpace
{
  v1 = [self mutableCopy];
  CFStringTrimWhitespace(v1);
  v2 = [(__CFString *)v1 copy];

  return v2;
}

- (id)trimFinalComma
{
  if ([self length] && objc_msgSend(self, "characterAtIndex:", objc_msgSend(self, "length") - 1) == 44)
  {
    selfCopy = [self substringToIndex:{objc_msgSend(self, "length") - 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)trimFirstComma
{
  if ([self length] && objc_msgSend(self, "characterAtIndex:", 0) == 44)
  {
    selfCopy = [self substringFromIndex:1];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)trimCommas
{
  trimFirstComma = [self trimFirstComma];
  trimFinalComma = [trimFirstComma trimFinalComma];

  return trimFinalComma;
}

- (id)trimFinalChar:()CalendarExtensions
{
  if ([self length] && objc_msgSend(self, "characterAtIndex:", objc_msgSend(self, "length") - 1) == a3)
  {
    selfCopy = [self substringToIndex:{objc_msgSend(self, "length") - 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)trimFirstChar:()CalendarExtensions
{
  if ([self length] && objc_msgSend(self, "characterAtIndex:", 0) == a3)
  {
    selfCopy = [self substringFromIndex:1];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)trimChar:()CalendarExtensions
{
  v4 = [self trimFirstChar:?];
  v5 = [v4 trimFinalChar:a3];

  return v5;
}

- (id)unquote
{
  if ([self rangeOfString:@"\\""] == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [MEMORY[0x277CCAB68] stringWithString:self];
    [selfCopy replaceOccurrencesOfString:@"\ withString:@" options:2 range:{0, objc_msgSend(selfCopy, "length")}];
  }

  return selfCopy;
}

- (id)searchAndReplaceString:()CalendarExtensions withString:
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:self];
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager stringWithFileSystemRepresentation:a3 length:strlen(a3)];

  return v5;
}

- (id)removeSlashIfNeeded
{
  if ([self hasSuffix:@"/"])
  {
    selfCopy = [self substringToIndex:{objc_msgSend(self, "length") - 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)appendSlashIfNeeded
{
  if ([self hasSuffix:@"/"])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self stringByAppendingString:@"/"];
  }

  return selfCopy;
}

@end