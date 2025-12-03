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
  if ([self length])
  {
    v2 = [self characterAtIndex:0];
    if (v2 < 0x41 || v2 - 91 <= 0x24)
    {
      v8 = [self copy];
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [self mutableCopy];
      v5 = [self substringToIndex:1];
      lowercaseString = [v5 lowercaseString];
      [v4 replaceCharactersInRange:0 withString:{1, lowercaseString}];

      if ([self isEqual:v4])
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = v4;
      }

      v8 = [selfCopy copy];

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
  if ([self length])
  {
    v2 = [self characterAtIndex:0];
    if (v2 < 0x61 || v2 - 123 <= 4)
    {
      v8 = [self copy];
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [self mutableCopy];
      v5 = [self substringToIndex:1];
      uppercaseString = [v5 uppercaseString];
      [v4 replaceCharactersInRange:0 withString:{1, uppercaseString}];

      if ([self isEqual:v4])
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = v4;
      }

      v8 = [selfCopy copy];

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
  if ([self length])
  {
    v2 = [self mutableCopy];
    v5 = __toupper([v2 characterAtIndex:0]);
    [v2 replaceCharactersInRange:0 withCString:1 length:{&v5, 1}];
    selfCopy = [v2 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)if_ASCIIStringByLowercasingFirstCharacter
{
  if ([self length])
  {
    v2 = [self mutableCopy];
    v5 = __tolower([v2 characterAtIndex:0]);
    [v2 replaceCharactersInRange:0 withCString:1 length:{&v5, 1}];
    selfCopy = [v2 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
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
    bytes = [v7 bytes];
    v9 = [v7 length];

    v10 = [self if_hexStringFromBytes:bytes length:v9];
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

  v15 = [[self alloc] initWithBytesNoCopy:v7 length:v8 - v7 encoding:1 freeWhenDone:1];

  return v15;
}

@end