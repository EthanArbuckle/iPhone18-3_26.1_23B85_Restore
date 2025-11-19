@interface CDPStringUtilities
+ (BOOL)isValidKeyLength:(id)a3 expectedLength:(unint64_t)a4 withSeparator:(id)a5;
+ (id)keyWithGrouping:(id)a3 groupLength:(unint64_t)a4 separator:(id)a5;
+ (id)sanitizedKeyInput:(id)a3;
@end

@implementation CDPStringUtilities

+ (id)sanitizedKeyInput:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v3 length])
  {
    v6 = 0;
    do
    {
      v7 = [v3 characterAtIndex:v6];
      v12 = v7;
      if ([v4 characterIsMember:v7])
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v12 length:1];
        v9 = [v8 uppercaseString];
        [v5 appendString:v9];
      }

      ++v6;
    }

    while (v6 < [v3 length]);
  }

  v10 = [v5 copy];

  return v10;
}

+ (id)keyWithGrouping:(id)a3 groupLength:(unint64_t)a4 separator:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 length])
  {
    if (a4)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
      if ([v7 length])
      {
        v10 = 0;
        do
        {
          v11 = [v7 substringWithRange:{v10, 1}];
          [v9 appendString:v11];

          if (!(++v10 % a4) && v10 < [v7 length])
          {
            [v9 appendString:v8];
          }
        }

        while (v10 < [v7 length]);
      }

      v12 = [v9 copy];
    }

    else
    {
      v12 = [v7 copy];
    }
  }

  else
  {
    v12 = &stru_1F5A0CCF0;
  }

  return v12;
}

+ (BOOL)isValidKeyLength:(id)a3 expectedLength:(unint64_t)a4 withSeparator:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8 && [v8 length])
  {
    v10 = [v7 stringByReplacingOccurrencesOfString:v9 withString:&stru_1F5A0CCF0];
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = [v10 length] == a4;

  return v12;
}

@end