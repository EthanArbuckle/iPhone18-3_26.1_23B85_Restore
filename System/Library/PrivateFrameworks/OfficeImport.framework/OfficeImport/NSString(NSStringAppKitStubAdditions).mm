@interface NSString(NSStringAppKitStubAdditions)
- (double)oi_sizeWithFontName:()NSStringAppKitStubAdditions size:bold:italic:;
- (uint64_t)oi_rangeOfCharactersFromSet:()NSStringAppKitStubAdditions index:;
@end

@implementation NSString(NSStringAppKitStubAdditions)

- (double)oi_sizeWithFontName:()NSStringAppKitStubAdditions size:bold:italic:
{
  v9 = [self length];
  v10 = 0.49;
  if (a5 | a6)
  {
    v10 = 0.58;
  }

  return v10 * a4 * v9;
}

- (uint64_t)oi_rangeOfCharactersFromSet:()NSStringAppKitStubAdditions index:
{
  v6 = a3;
  v7 = [self length];
  v8 = [self rangeOfCharacterFromSet:v6 options:0 range:{a4, v7 - a4}];
  v9 = v8;
  v11 = v10;
  if (v10)
  {
    v12 = v8 + 1;
    if (v8 + 1 < v7)
    {
      do
      {
        if (![v6 characterIsMember:{objc_msgSend(self, "characterAtIndex:", v12)}])
        {
          break;
        }

        ++v11;
        ++v12;
      }

      while (v7 != v12);
    }
  }

  return v9;
}

@end