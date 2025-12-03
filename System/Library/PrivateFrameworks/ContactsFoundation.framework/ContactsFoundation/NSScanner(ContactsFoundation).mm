@interface NSScanner(ContactsFoundation)
- (uint64_t)_cn_scanHexChar:()ContactsFoundation;
@end

@implementation NSScanner(ContactsFoundation)

- (uint64_t)_cn_scanHexChar:()ContactsFoundation
{
  if ([self isAtEnd])
  {
    return 0;
  }

  scanLocation = [self scanLocation];
  [self scanString:@"0x" intoString:0];
  if ([self isAtEnd])
  {
    [self setScanLocation:scanLocation];
    return 0;
  }

  v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  string = [self string];
  v9 = [string characterAtIndex:{objc_msgSend(self, "scanLocation")}];

  v6 = [v7 characterIsMember:v9];
  if (v6)
  {
    v10 = objc_opt_new();
    if ([v7 characterIsMember:v9])
    {
      do
      {
        if ([v10 length] > 1)
        {
          break;
        }

        [v10 appendFormat:@"%c", v9];
        [self setScanLocation:{objc_msgSend(self, "scanLocation") + 1}];
        if ([self isAtEnd])
        {
          break;
        }

        string2 = [self string];
        v9 = [string2 characterAtIndex:{objc_msgSend(self, "scanLocation")}];
      }

      while (([v7 characterIsMember:v9] & 1) != 0);
    }

    if (a3)
    {
      v12 = [MEMORY[0x1E696AE88] scannerWithString:v10];
      v14 = 0;
      [v12 scanHexInt:&v14];
      *a3 = v14;
    }
  }

  return v6;
}

@end