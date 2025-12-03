@interface NSString(PKAdditions)
+ (id)pk_stringWithBCData:()PKAdditions;
- (id)pk_attributedString;
- (id)pk_capitalizedStringForPreferredLocale;
- (id)pk_decodeHexadecimal;
- (id)pk_decodeURLBase64;
- (id)pk_lowercaseStringForPreferredLocale;
- (id)pk_merchantTokensSanitizedBillingAgreement;
- (id)pk_posixStringWithMinimumDecimalPlaces:()PKAdditions;
- (id)pk_stringByInsertingString:()PKAdditions afterEvery:;
- (id)pk_stringByNormalizingWhitespace;
- (id)pk_stringIfNotEmpty;
- (id)pk_uppercaseAttributedString;
- (id)pk_uppercaseFirstStringForLocale:()PKAdditions;
- (id)pk_uppercaseFirstStringForPreferredLocale;
- (id)pk_uppercaseStringForPreferredLocale;
- (id)pk_zString;
- (uint64_t)pk_posixStringDecimalPlaces;
- (void)pk_normalizedLevenshteinDistanceFromString:()PKAdditions decimalPlaces:;
@end

@implementation NSString(PKAdditions)

- (id)pk_decodeHexadecimal
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v3 = strlen([self cStringUsingEncoding:4]);
  __str[2] = 0;
  if (v3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = 1;
    do
    {
      __str[0] = [self characterAtIndex:v5 - 1];
      __str[1] = [self characterAtIndex:v5];
      v8 = strtoul(__str, 0, 16);
      [v2 appendBytes:&v8 length:1];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v6 = [v2 copy];

  return v6;
}

- (id)pk_uppercaseStringForPreferredLocale
{
  pk_preferredLocale = [MEMORY[0x1E695DF58] pk_preferredLocale];
  v3 = [self uppercaseStringWithLocale:pk_preferredLocale];

  return v3;
}

- (id)pk_zString
{
  v1 = [MEMORY[0x1E696AEC0] _newZStringWithString:self];

  return v1;
}

- (id)pk_lowercaseStringForPreferredLocale
{
  pk_preferredLocale = [MEMORY[0x1E695DF58] pk_preferredLocale];
  v3 = [self lowercaseStringWithLocale:pk_preferredLocale];

  return v3;
}

- (id)pk_capitalizedStringForPreferredLocale
{
  pk_preferredLocale = [MEMORY[0x1E695DF58] pk_preferredLocale];
  v3 = [self capitalizedStringWithLocale:pk_preferredLocale];

  return v3;
}

- (id)pk_uppercaseFirstStringForPreferredLocale
{
  pk_preferredLocale = [MEMORY[0x1E695DF58] pk_preferredLocale];
  v3 = [self pk_uppercaseFirstStringForLocale:pk_preferredLocale];

  return v3;
}

- (id)pk_uppercaseFirstStringForLocale:()PKAdditions
{
  v4 = a3;
  if ([self length] < 2)
  {
    v10 = [self uppercaseStringWithLocale:v4];
  }

  else
  {
    [self rangeOfComposedCharacterSequenceAtIndex:0];
    v6 = v5;
    v7 = [self substringToIndex:v5];
    v8 = [v7 uppercaseStringWithLocale:v4];
    v9 = [self substringFromIndex:v6];
    v10 = [v8 stringByAppendingString:v9];
  }

  return v10;
}

- (id)pk_stringByInsertingString:()PKAdditions afterEvery:
{
  v6 = a3;
  v7 = [self length];
  if (a4 && (v8 = v7) != 0 && [v6 length] && v8 > a4)
  {
    string = [MEMORY[0x1E696AD60] string];
    v10 = 0;
    v11 = v8;
    do
    {
      if (v10)
      {
        [string appendString:v6];
      }

      v12 = [self substringWithRange:{v10, fmin(a4, v11)}];
      [string appendString:v12];

      v10 += a4;
      v11 -= a4;
    }

    while (v10 < v8);
    selfCopy = [string copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)pk_uppercaseAttributedString
{
  v2 = objc_alloc(MEMORY[0x1E696AAB0]);
  pk_uppercaseStringForPreferredLocale = [self pk_uppercaseStringForPreferredLocale];
  v4 = [v2 initWithString:pk_uppercaseStringForPreferredLocale];

  return v4;
}

- (id)pk_attributedString
{
  v1 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self];

  return v1;
}

- (void)pk_normalizedLevenshteinDistanceFromString:()PKAdditions decimalPlaces:
{
  selfCopy = self;
  v8 = a3;
  uTF8String = [self UTF8String];
  uTF8String2 = [v8 UTF8String];

  if (uTF8String)
  {
    v11 = strlen(uTF8String);
    if (uTF8String2)
    {
LABEL_3:
      v12 = strlen(uTF8String2);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (uTF8String2)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  if (v11 | v12)
  {
    LevenshteinDistance();
    __exp10(a4);
  }
}

- (id)pk_decodeURLBase64
{
  v1 = [self copy];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

  v3 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];

  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v3 options:0];

  return v4;
}

+ (id)pk_stringWithBCData:()PKAdditions
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(v3, "length")}];
  bytes = [v3 bytes];
  if ([v3 length])
  {
    v6 = 0;
    do
    {
      [v4 appendFormat:@"%.2x", *(bytes + v6++)];
    }

    while (v6 < [v3 length]);
  }

  v7 = [v4 copy];

  return v7;
}

- (id)pk_stringIfNotEmpty
{
  if ([self length])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)pk_merchantTokensSanitizedBillingAgreement
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([v3 length] <= 0x1F4)
  {
    v4 = [v3 length];
  }

  else
  {
    v4 = 500;
  }

  v5 = [v3 substringToIndex:v4];

  return v5;
}

- (uint64_t)pk_posixStringDecimalPlaces
{
  v2 = [self rangeOfString:@"." options:4];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return [self length] - (v2 + v3);
  }
}

- (id)pk_posixStringWithMinimumDecimalPlaces:()PKAdditions
{
  selfCopy = self;
  v5 = selfCopy;
  if (a3 < 1)
  {
    goto LABEL_7;
  }

  if (([selfCopy pk_posixStringHasPeriod] & 1) == 0)
  {
    v6 = [v5 stringByAppendingString:@"."];

    v5 = v6;
  }

  pk_posixStringDecimalPlaces = [v5 pk_posixStringDecimalPlaces];
  v8 = a3 - pk_posixStringDecimalPlaces;
  if (a3 <= pk_posixStringDecimalPlaces)
  {
LABEL_7:
    v9 = v5;
  }

  else
  {
    do
    {
      v9 = [v5 stringByAppendingString:@"0"];

      v5 = v9;
      --v8;
    }

    while (v8);
  }

  return v9;
}

- (id)pk_stringByNormalizingWhitespace
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [self componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self <> ''"];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = [v5 componentsJoinedByString:@" "];

  return v6;
}

@end