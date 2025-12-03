@interface CDPStringUtilities
+ (BOOL)isValidKeyLength:(id)length expectedLength:(unint64_t)expectedLength withSeparator:(id)separator;
+ (id)keyWithGrouping:(id)grouping groupLength:(unint64_t)length separator:(id)separator;
+ (id)sanitizedKeyInput:(id)input;
@end

@implementation CDPStringUtilities

+ (id)sanitizedKeyInput:(id)input
{
  inputCopy = input;
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([inputCopy length])
  {
    v6 = 0;
    do
    {
      v7 = [inputCopy characterAtIndex:v6];
      v12 = v7;
      if ([alphanumericCharacterSet characterIsMember:v7])
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v12 length:1];
        uppercaseString = [v8 uppercaseString];
        [v5 appendString:uppercaseString];
      }

      ++v6;
    }

    while (v6 < [inputCopy length]);
  }

  v10 = [v5 copy];

  return v10;
}

+ (id)keyWithGrouping:(id)grouping groupLength:(unint64_t)length separator:(id)separator
{
  groupingCopy = grouping;
  separatorCopy = separator;
  if ([groupingCopy length])
  {
    if (length)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
      if ([groupingCopy length])
      {
        v10 = 0;
        do
        {
          v11 = [groupingCopy substringWithRange:{v10, 1}];
          [v9 appendString:v11];

          if (!(++v10 % length) && v10 < [groupingCopy length])
          {
            [v9 appendString:separatorCopy];
          }
        }

        while (v10 < [groupingCopy length]);
      }

      v12 = [v9 copy];
    }

    else
    {
      v12 = [groupingCopy copy];
    }
  }

  else
  {
    v12 = &stru_1F5A0CCF0;
  }

  return v12;
}

+ (BOOL)isValidKeyLength:(id)length expectedLength:(unint64_t)expectedLength withSeparator:(id)separator
{
  lengthCopy = length;
  separatorCopy = separator;
  v9 = separatorCopy;
  if (separatorCopy && [separatorCopy length])
  {
    v10 = [lengthCopy stringByReplacingOccurrencesOfString:v9 withString:&stru_1F5A0CCF0];
  }

  else
  {
    v10 = lengthCopy;
  }

  v11 = v10;
  v12 = [v10 length] == expectedLength;

  return v12;
}

@end