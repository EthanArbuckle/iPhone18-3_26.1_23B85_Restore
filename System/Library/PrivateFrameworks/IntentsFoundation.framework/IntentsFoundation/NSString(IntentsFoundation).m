@interface NSString(IntentsFoundation)
+ (id)if_hexStringFromBytes:()IntentsFoundation length:;
+ (id)if_hexStringFromData:()IntentsFoundation;
+ (id)if_stringWithData:()IntentsFoundation;
- (__CFString)if_stringByLowercasingFirstCharacter;
- (__CFString)if_stringByUppercasingFirstCharacter;
- (id)if_ASCIIStringByLowercasingFirstCharacter;
- (id)if_ASCIIStringByUppercasingFirstCharacter;
@end

@implementation NSString(IntentsFoundation)

- (__CFString)if_stringByLowercasingFirstCharacter
{
  if ([a1 length])
  {
    v2 = [a1 characterAtIndex:0];
    if (v2 < 0x41 || v2 - 91 <= 0x24)
    {
      v8 = [a1 copy];
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [a1 mutableCopy];
      v5 = [a1 substringToIndex:1];
      v6 = [v5 lowercaseString];
      [v4 replaceCharactersInRange:0 withString:{1, v6}];

      if ([a1 isEqual:v4])
      {
        v7 = a1;
      }

      else
      {
        v7 = v4;
      }

      v8 = [v7 copy];

      objc_autoreleasePoolPop(v3);
    }
  }

  else
  {
    v8 = &stru_28676DA60;
  }

  return v8;
}

- (__CFString)if_stringByUppercasingFirstCharacter
{
  if ([a1 length])
  {
    v2 = [a1 characterAtIndex:0];
    if (v2 < 0x61 || v2 - 123 <= 4)
    {
      v8 = [a1 copy];
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [a1 mutableCopy];
      v5 = [a1 substringToIndex:1];
      v6 = [v5 uppercaseString];
      [v4 replaceCharactersInRange:0 withString:{1, v6}];

      if ([a1 isEqual:v4])
      {
        v7 = a1;
      }

      else
      {
        v7 = v4;
      }

      v8 = [v7 copy];

      objc_autoreleasePoolPop(v3);
    }
  }

  else
  {
    v8 = &stru_28676DA60;
  }

  return v8;
}

- (id)if_ASCIIStringByUppercasingFirstCharacter
{
  if ([a1 length])
  {
    v2 = [a1 mutableCopy];
    v5 = __toupper([v2 characterAtIndex:0]);
    [v2 replaceCharactersInRange:0 withCString:1 length:{&v5, 1}];
    v3 = [v2 copy];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

- (id)if_ASCIIStringByLowercasingFirstCharacter
{
  if ([a1 length])
  {
    v2 = [a1 mutableCopy];
    v5 = __tolower([v2 characterAtIndex:0]);
    [v2 replaceCharactersInRange:0 withCString:1 length:{&v5, 1}];
    v3 = [v2 copy];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

+ (id)if_stringWithData:()IntentsFoundation
{
  if (a3)
  {
    v6 = 0;
    [MEMORY[0x277CCACA8] stringEncodingForData:a3 encodingOptions:0 convertedString:&v6 usedLossyConversion:0];
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)if_hexStringFromData:()IntentsFoundation
{
  if (a3)
  {
    v6 = a3;
    v7 = a3;
    v8 = [v7 bytes];
    v9 = [v7 length];

    v10 = [a1 if_hexStringFromBytes:v8 length:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)if_hexStringFromBytes:()IntentsFoundation length:
{
  v4 = a4;
  v7 = malloc_type_malloc(2 * a4, 0x323724E8uLL);
  v8 = v7;
  if (v4)
  {
    v9 = v7;
    do
    {
      if (*a3 <= 0x9Fu)
      {
        v10 = (*a3 >> 4) | 0x30;
      }

      else
      {
        v10 = (*a3 >> 4) + 87;
      }

      *v9 = v10;
      v11 = *a3++;
      v12 = (v11 & 0xF) + 87;
      v13 = v11 & 0xF | 0x30;
      if ((v11 & 0xFu) <= 9)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      v8 = v9 + 2;
      v9[1] = v14;
      v9 += 2;
      --v4;
    }

    while (v4);
  }

  v15 = [[a1 alloc] initWithBytesNoCopy:v7 length:v8 - v7 encoding:1 freeWhenDone:1];

  return v15;
}

@end