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
  tsu_stringByRemovingEscapedCharactersFromNumberFormatPattern = [self tsu_stringByRemovingEscapedCharactersFromNumberFormatPattern];
  v4 = [tsu_stringByRemovingEscapedCharactersFromNumberFormatPattern rangeOfCharacterFromSet:v2];

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)tsu_newRangesOfEscapedCharactersInNumberFormatPattern
{
  v2 = [self length];
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [self rangeOfString:@"'" options:0 range:{v3, v2 - v3}];
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
      v8 = [self rangeOfString:@"'" options:0 range:{v5 + 1, v2 - (v5 + 1)}];
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
  tsu_newRangesOfEscapedCharactersInNumberFormatPattern = [self tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  if (tsu_newRangesOfEscapedCharactersInNumberFormatPattern)
  {
    selfCopy = [MEMORY[0x277CCAB68] stringWithString:self];
    v4 = [self length];
    if ([tsu_newRangesOfEscapedCharactersInNumberFormatPattern count])
    {
      v5 = 0;
      do
      {
        v6 = [tsu_newRangesOfEscapedCharactersInNumberFormatPattern objectAtIndex:v5];
        rangeValue = [v6 rangeValue];
        v9 = v8;

        [selfCopy replaceCharactersInRange:rangeValue - v4 + objc_msgSend(selfCopy withString:{"length"), v9, &stru_286EE1130}];
        ++v5;
      }

      while (v5 < [tsu_newRangesOfEscapedCharactersInNumberFormatPattern count]);
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)tsu_indexOfNumberFormatSubpatternSeparator
{
  tsu_newRangesOfEscapedCharactersInNumberFormatPattern = [self tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v3 = [self rangeOfString:@";" options:0 range:{0, objc_msgSend(self, "length")}];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    while (TSULocationInRanges(v4, tsu_newRangesOfEscapedCharactersInNumberFormatPattern))
    {
      v4 = [self rangeOfString:@";" options:0 range:{v4 + 1, objc_msgSend(self, "length") - (v4 + 1)}];
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
  tsu_indexOfNumberFormatSubpatternSeparator = [self tsu_indexOfNumberFormatSubpatternSeparator];
  if (tsu_indexOfNumberFormatSubpatternSeparator == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringToIndex:tsu_indexOfNumberFormatSubpatternSeparator];
  }

  return selfCopy;
}

- (__CFString)tsu_negativeSubpatternOfNumberFormatPattern
{
  tsu_indexOfNumberFormatSubpatternSeparator = [self tsu_indexOfNumberFormatSubpatternSeparator];
  if (tsu_indexOfNumberFormatSubpatternSeparator == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_286EE1130;
  }

  else
  {
    v3 = [self substringFromIndex:tsu_indexOfNumberFormatSubpatternSeparator + 1];
  }

  return v3;
}

- (uint64_t)tsu_numberPortionOfNumberFormatSubpattern
{
  tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern = [self tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
  v3 = [self tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern] - tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern + 1;

  return [self substringWithRange:{tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern, v3}];
}

- (uint64_t)tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern
{
  tsu_newRangesOfEscapedCharactersInNumberFormatPattern = [self tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  tsu_numberSymbols = [objc_opt_class() tsu_numberSymbols];
  v4 = [self length];
  while (1)
  {
    v5 = [self rangeOfCharacterFromSet:tsu_numberSymbols options:4 range:{0, v4}];
    v4 = v5;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (!TSULocationInRanges(v5, tsu_newRangesOfEscapedCharactersInNumberFormatPattern))
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
  v2 = [self tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern] + 1;

  return [self substringFromIndex:v2];
}

- (unint64_t)tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern
{
  tsu_newRangesOfEscapedCharactersInNumberFormatPattern = [self tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  tsu_numberSymbols = [objc_opt_class() tsu_numberSymbols];
  v4 = [self rangeOfCharacterFromSet:tsu_numberSymbols options:0 range:{0, objc_msgSend(self, "length")}];
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
    while (TSULocationInRanges(v5, tsu_newRangesOfEscapedCharactersInNumberFormatPattern))
    {
      v5 = [self rangeOfCharacterFromSet:tsu_numberSymbols options:0 range:{v5 + 1, objc_msgSend(self, "length") - (v5 + 1)}];
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
  tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern = [self tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];

  return [self substringToIndex:tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
}

@end