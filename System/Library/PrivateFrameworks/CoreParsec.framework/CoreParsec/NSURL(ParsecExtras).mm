@interface NSURL(ParsecExtras)
+ (uint64_t)parsec_hostAndPortRangeFromURLString:()ParsecExtras;
@end

@implementation NSURL(ParsecExtras)

+ (uint64_t)parsec_hostAndPortRangeFromURLString:()ParsecExtras
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"://" options:2];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v4;
    v8 = v5;
    v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-."];
    invertedSet = [v9 invertedSet];

    if ([v3 rangeOfCharacterFromSet:invertedSet options:2 range:{0, v7}] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v3 length];
      v12 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/?#"];
      v13 = v7 + v8;
      v14 = [v3 rangeOfCharacterFromSet:v12 options:2 range:{v13, v11 - v13}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v11;
      }

      else
      {
        v15 = v14;
      }

      v16 = [v3 rangeOfString:@"@" options:2 range:{v13, v15 - v13}];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v13;
      }

      else
      {
        v6 = v16 + v17;
      }
    }
  }

  return v6;
}

@end