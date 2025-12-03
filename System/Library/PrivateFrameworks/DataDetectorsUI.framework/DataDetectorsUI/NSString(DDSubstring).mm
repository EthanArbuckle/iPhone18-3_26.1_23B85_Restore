@interface NSString(DDSubstring)
- (__CFString)dd_leadingTextWithNumberOfCharacters:()DDSubstring beforeRange:;
- (__CFString)dd_trailingTextWithNumberOfCharacters:()DDSubstring afterRange:;
@end

@implementation NSString(DDSubstring)

- (__CFString)dd_leadingTextWithNumberOfCharacters:()DDSubstring beforeRange:
{
  if ([self length] <= a4)
  {
    v7 = &stru_282C1E0A8;
  }

  else
  {
    v7 = [self substringWithRange:{(a4 - a3) & ~((a4 - a3) >> 63), a3 - ((a3 - a4) & ~((a3 - a4) >> 63))}];
  }

  return v7;
}

- (__CFString)dd_trailingTextWithNumberOfCharacters:()DDSubstring afterRange:
{
  v7 = a4 + a5;
  v8 = [self length];
  if (v8 <= v7)
  {
    v10 = &stru_282C1E0A8;
  }

  else
  {
    if (v8 - v7 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v8 - v7;
    }

    v10 = [self substringWithRange:{v7, v9}];
  }

  return v10;
}

@end