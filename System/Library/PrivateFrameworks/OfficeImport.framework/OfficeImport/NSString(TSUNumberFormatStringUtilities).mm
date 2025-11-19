@interface NSString(TSUNumberFormatStringUtilities)
+ (id)tsu_numberSymbols;
- (BOOL)tsu_isNumberFormatPattern;
- (__CFString)tsu_negativeSubpatternOfNumberFormatPattern;
- (id)tsu_positiveSubpatternOfNumberFormatPattern;
- (id)tsu_stringByRemovingEscapedCharactersFromNumberFormatPattern;
- (uint64_t)tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern;
- (uint64_t)tsu_numberPortionOfNumberFormatSubpattern;
- (uint64_t)tsu_prefixOfNumberFormatSubpattern;
- (uint64_t)tsu_suffixOfNumberFormatSubpattern;
- (unint64_t)tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern;
- (unint64_t)tsu_indexOfNumberFormatSubpatternSeparator;
- (void)tsu_newRangesOfEscapedCharactersInNumberFormatPattern;
@end

@implementation NSString(TSUNumberFormatStringUtilities)

+ (id)tsu_numberSymbols
{
  if (tsu_numberSymbols_onceToken != -1)
  {
    +[NSString(TSUNumberFormatStringUtilities) tsu_numberSymbols];
  }

  v1 = tsu_numberSymbols_symbols;

  return v1;
}

- (BOOL)tsu_isNumberFormatPattern
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789@#"];
  v3 = [a1 tsu_stringByRemovingEscapedCharactersFromNumberFormatPattern];
  v4 = [v3 rangeOfCharacterFromSet:v2];

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)tsu_newRangesOfEscapedCharactersInNumberFormatPattern
{
  v2 = [a1 length];
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [a1 rangeOfString:@"'" options:0 range:{v3, v2 - v3}];
    v6 = v5;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || v5 == v2 - 1)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return v4;
      }
    }

    else
    {
      v8 = [a1 rangeOfString:@"'" options:0 range:{v5 + 1, v2 - (v5 + 1)}];
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v2 - v6;
    }

    else
    {
      v9 = v8 - v6 + 1;
    }

    v10 = [MEMORY[0x277CCAE60] valueWithRange:{v6, v9}];
    if (v4)
    {
      [v4 addObject:v10];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
    }

    v3 = v8 + 1;
  }

  while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  return v4;
}

- (id)tsu_stringByRemovingEscapedCharactersFromNumberFormatPattern
{
  v2 = [a1 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:a1];
    v4 = [a1 length];
    if ([v2 count])
    {
      v5 = 0;
      do
      {
        v6 = [v2 objectAtIndex:v5];
        v7 = [v6 rangeValue];
        v9 = v8;

        [v3 replaceCharactersInRange:v7 - v4 + objc_msgSend(v3 withString:{"length"), v9, &stru_286EE1130}];
        ++v5;
      }

      while (v5 < [v2 count]);
    }
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

- (unint64_t)tsu_indexOfNumberFormatSubpatternSeparator
{
  v2 = [a1 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v3 = [a1 rangeOfString:@";" options:0 range:{0, objc_msgSend(a1, "length")}];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    while (TSULocationInRanges(v4, v2))
    {
      v4 = [a1 rangeOfString:@";" options:0 range:{v4 + 1, objc_msgSend(a1, "length") - (v4 + 1)}];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }
    }
  }

  return v4;
}

- (id)tsu_positiveSubpatternOfNumberFormatPattern
{
  v2 = [a1 tsu_indexOfNumberFormatSubpatternSeparator];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = a1;
  }

  else
  {
    v3 = [a1 substringToIndex:v2];
  }

  return v3;
}

- (__CFString)tsu_negativeSubpatternOfNumberFormatPattern
{
  v2 = [a1 tsu_indexOfNumberFormatSubpatternSeparator];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_286EE1130;
  }

  else
  {
    v3 = [a1 substringFromIndex:v2 + 1];
  }

  return v3;
}

- (uint64_t)tsu_numberPortionOfNumberFormatSubpattern
{
  v2 = [a1 tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
  v3 = [a1 tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern] - v2 + 1;

  return [a1 substringWithRange:{v2, v3}];
}

- (uint64_t)tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern
{
  v2 = [a1 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v3 = [objc_opt_class() tsu_numberSymbols];
  v4 = [a1 length];
  while (1)
  {
    v5 = [a1 rangeOfCharacterFromSet:v3 options:4 range:{0, v4}];
    v4 = v5;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (!TSULocationInRanges(v5, v2))
    {
      goto LABEL_6;
    }
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUNumberFormatStringUtilities) tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern]"];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
  [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:194 isFatal:0 description:"invalid number format subpattern"];

  +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_6:

  return v4;
}

- (uint64_t)tsu_suffixOfNumberFormatSubpattern
{
  v2 = [a1 tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern] + 1;

  return [a1 substringFromIndex:v2];
}

- (unint64_t)tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern
{
  v2 = [a1 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v3 = [objc_opt_class() tsu_numberSymbols];
  v4 = [a1 rangeOfCharacterFromSet:v3 options:0 range:{0, objc_msgSend(a1, "length")}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUNumberFormatStringUtilities) tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:223 isFatal:0 description:"invalid number format subpattern"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
    while (TSULocationInRanges(v5, v2))
    {
      v5 = [a1 rangeOfCharacterFromSet:v3 options:0 range:{v5 + 1, objc_msgSend(a1, "length") - (v5 + 1)}];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (uint64_t)tsu_prefixOfNumberFormatSubpattern
{
  v2 = [a1 tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];

  return [a1 substringToIndex:v2];
}

@end