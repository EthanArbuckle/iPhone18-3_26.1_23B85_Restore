@interface NSScanner(ContactsFoundation)
- (uint64_t)_cn_scanHexChar:()ContactsFoundation;
@end

@implementation NSScanner(ContactsFoundation)

- (uint64_t)_cn_scanHexChar:()ContactsFoundation
{
  if ([a1 isAtEnd])
  {
    return 0;
  }

  v5 = [a1 scanLocation];
  [a1 scanString:@"0x" intoString:0];
  if ([a1 isAtEnd])
  {
    [a1 setScanLocation:v5];
    return 0;
  }

  v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  v8 = [a1 string];
  v9 = [v8 characterAtIndex:{objc_msgSend(a1, "scanLocation")}];

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
        [a1 setScanLocation:{objc_msgSend(a1, "scanLocation") + 1}];
        if ([a1 isAtEnd])
        {
          break;
        }

        v11 = [a1 string];
        v9 = [v11 characterAtIndex:{objc_msgSend(a1, "scanLocation")}];
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