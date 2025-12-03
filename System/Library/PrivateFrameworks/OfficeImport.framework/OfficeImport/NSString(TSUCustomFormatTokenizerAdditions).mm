@interface NSString(TSUCustomFormatTokenizerAdditions)
+ (uint64_t)tsu_customNumberFormatDecimalTokenRepresentedStringWithDigits:()TSUCustomFormatTokenizerAdditions digitString:;
+ (uint64_t)tsu_customNumberFormatIntegerTokenRepresentedStringWithDigits:()TSUCustomFormatTokenizerAdditions separator:digitString:;
+ (uint64_t)tsu_customNumberFormatTokenStringOfType:()TSUCustomFormatTokenizerAdditions content:;
+ (void)tsu_customNumberFormatDecimalFormatStringWithDigits:()TSUCustomFormatTokenizerAdditions digitString:includeDecimalSeparator:;
+ (void)tsu_customNumberFormatDecimalTokenDisplayStringWithDigits:()TSUCustomFormatTokenizerAdditions digitString:;
+ (void)tsu_customNumberFormatIntegerFormatStringWithDigits:()TSUCustomFormatTokenizerAdditions digitString:;
+ (void)tsu_customNumberFormatIntegerTokenDisplayStringWithDigits:()TSUCustomFormatTokenizerAdditions separator:digitString:locale:;
- (BOOL)tsu_customFormatIntegerTokenUsesSeparator;
- (BOOL)tsu_isSpecialCustomNumberFormatTokenOfType:()TSUCustomFormatTokenizerAdditions;
- (__CFString)tsu_digitPlaceholderStringInDigitToken;
- (id)tsu_currencyCodeFromCustomNumberFormatCurrencyToken;
- (uint64_t)tsu_fractionAccuracyFromCustomNumberFormatFractionToken;
- (uint64_t)tsu_numberOfDigitsInCustomNumberFormatDecimalToken;
- (uint64_t)tsu_numberOfDigitsInCustomNumberFormatIntegerToken;
- (void)tsu_stringByInsertingFormatGroupingSeparators:()TSUCustomFormatTokenizerAdditions;
@end

@implementation NSString(TSUCustomFormatTokenizerAdditions)

+ (uint64_t)tsu_customNumberFormatTokenStringOfType:()TSUCustomFormatTokenizerAdditions content:
{
  v5 = TSUCustomFormatTokenIdentifierCharacterForTokenType(a3);
  if (a4)
  {
    return [MEMORY[0x277CCAB68] stringWithFormat:@"%C%C%@", 63743, v5, a4];
  }

  else
  {
    return [MEMORY[0x277CCAB68] stringWithFormat:@"%C%C", 63743, v5, v7];
  }
}

- (BOOL)tsu_isSpecialCustomNumberFormatTokenOfType:()TSUCustomFormatTokenizerAdditions
{
  if ([self length] < 2 || objc_msgSend(self, "characterAtIndex:", 0) != 63743)
  {
    return 0;
  }

  v5 = [self characterAtIndex:1];
  return TSUCustomFormatTokenIdentifierCharacterForTokenType(a3) == v5;
}

- (uint64_t)tsu_numberOfDigitsInCustomNumberFormatIntegerToken
{
  if (([self tsu_isSpecialCustomNumberFormatTokenOfType:1] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomFormatTokenizerAdditions) tsu_numberOfDigitsInCustomNumberFormatIntegerToken]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormatTokenizer.m"], 403, 0, "Wrong token type!");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if ([self length] < 3)
  {
    return 0;
  }

  v3 = 0;
  v4 = 2;
  do
  {
    if ([self characterAtIndex:v4] != 44)
    {
      ++v3;
    }

    ++v4;
  }

  while (v4 < [self length]);
  return v3;
}

- (BOOL)tsu_customFormatIntegerTokenUsesSeparator
{
  if (([self tsu_isSpecialCustomNumberFormatTokenOfType:1] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomFormatTokenizerAdditions) tsu_customFormatIntegerTokenUsesSeparator]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormatTokenizer.m"], 413, 0, "Wrong token type!");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return [self characterAtIndex:{objc_msgSend(self, "length") - 1}] == 44;
}

- (void)tsu_stringByInsertingFormatGroupingSeparators:()TSUCustomFormatTokenizerAdditions
{
  if (!a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomFormatTokenizerAdditions) tsu_stringByInsertingFormatGroupingSeparators:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormatTokenizer.m"], 418, 0, "Need locale here.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  string = [MEMORY[0x277CCAB68] string];
  groupingSize = [a3 groupingSize];
  v8 = [self length];
  if (v8)
  {
    v9 = -v8;
    v10 = v8 - 1;
    v11 = 1;
    do
    {
      [string insertString:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"stringWithFormat:", @"%C", objc_msgSend(self, "characterAtIndex:", v10)), 0}];
      if (v9 + v11 && groupingSize && !(v11 % groupingSize))
      {
        [string insertString:@" atIndex:{", 0}];
      }

      ++v11;
      --v10;
    }

    while (v9 + v11 != 1);
  }

  return string;
}

+ (void)tsu_customNumberFormatIntegerTokenDisplayStringWithDigits:()TSUCustomFormatTokenizerAdditions separator:digitString:locale:
{
  if (!a6)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSString(TSUCustomFormatTokenizerAdditions) tsu_customNumberFormatIntegerTokenDisplayStringWithDigits:separator:digitString:locale:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormatTokenizer.m"], 438, 0, "Need locale here.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  string = [MEMORY[0x277CCAB68] string];
  groupingSize = [a6 groupingSize];
  if (a3)
  {
    v13 = groupingSize;
    v14 = 0;
    v15 = *MEMORY[0x277CBE6B8];
    do
    {
      if (v14 && v13)
      {
        if (a3 % v13)
        {
          v16 = 1;
        }

        else
        {
          v16 = a4 == 0;
        }

        if (!v16)
        {
          [string appendString:{objc_msgSend(objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale"), "objectForKey:", v15)}];
        }
      }

      [string appendString:a5];
      ++v14;
      --a3;
    }

    while (a3);
  }

  return string;
}

+ (uint64_t)tsu_customNumberFormatIntegerTokenRepresentedStringWithDigits:()TSUCustomFormatTokenizerAdditions separator:digitString:
{
  for (i = [MEMORY[0x277CCAB68] stringWithCapacity:?]; a3; --a3)
  {
    [i appendString:a5];
  }

  if (a4)
  {
    [i appendString:{@", "}];
  }

  v9 = MEMORY[0x277CCAB68];

  return [v9 tsu_customNumberFormatTokenStringOfType:1 content:i];
}

+ (void)tsu_customNumberFormatIntegerFormatStringWithDigits:()TSUCustomFormatTokenizerAdditions digitString:
{
  for (i = [MEMORY[0x277CCAB68] string]; a3; --a3)
  {
    [i appendString:a4];
  }

  return i;
}

- (uint64_t)tsu_numberOfDigitsInCustomNumberFormatDecimalToken
{
  if (([self tsu_isSpecialCustomNumberFormatTokenOfType:2] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomFormatTokenizerAdditions) tsu_numberOfDigitsInCustomNumberFormatDecimalToken]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormatTokenizer.m"], 472, 0, "Wrong token type!");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return [self length] - 3;
}

+ (void)tsu_customNumberFormatDecimalTokenDisplayStringWithDigits:()TSUCustomFormatTokenizerAdditions digitString:
{
  string = [MEMORY[0x277CCAB68] string];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [string appendString:{objc_msgSend(currentLocale, "objectForKey:", *MEMORY[0x277CBE6A8])}];
  for (; a3; --a3)
  {
    [string appendString:a4];
  }

  return string;
}

+ (uint64_t)tsu_customNumberFormatDecimalTokenRepresentedStringWithDigits:()TSUCustomFormatTokenizerAdditions digitString:
{
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:?];
  if (a3 != -1)
  {
    v7 = a3 + 1;
    do
    {
      [v6 appendString:a4];
      --v7;
    }

    while (v7);
  }

  v8 = MEMORY[0x277CCAB68];

  return [v8 tsu_customNumberFormatTokenStringOfType:2 content:v6];
}

+ (void)tsu_customNumberFormatDecimalFormatStringWithDigits:()TSUCustomFormatTokenizerAdditions digitString:includeDecimalSeparator:
{
  string = [MEMORY[0x277CCAB68] string];
  v9 = string;
  if (a5)
  {
    [string appendString:@"."];
  }

  for (; a3; --a3)
  {
    [v9 appendString:a4];
  }

  return v9;
}

- (__CFString)tsu_digitPlaceholderStringInDigitToken
{
  v2 = @"0";
  if ([self rangeOfString:@"0"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = @"#";
    if ([self rangeOfString:@"#"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      return @"?";
    }
  }

  return v2;
}

- (id)tsu_currencyCodeFromCustomNumberFormatCurrencyToken
{
  if ([self length] < 3)
  {

    return +[OITSUNumberFormatter currentLocaleCurrencyCode];
  }

  else
  {

    return [self substringFromIndex:2];
  }
}

- (uint64_t)tsu_fractionAccuracyFromCustomNumberFormatFractionToken
{
  v1 = [self substringFromIndex:2];

  return [v1 intValue];
}

@end