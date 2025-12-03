@interface IPRegexToolbox
+ (BOOL)isRangeInsideQuotationMarks:(_NSRange)marks text:(id)text limitToSurroundingText:(BOOL)surroundingText;
+ (BOOL)isRangeNearbyExclusionKeyword:(_NSRange)keyword text:(id)text limitToSurroundingText:(BOOL)surroundingText language:(id)language;
+ (id)emailSubjectPrefixRegex;
+ (id)firstMatchingKeywordForRegex:(id)regex inString:(id)string needsToLowercase:(BOOL)lowercase;
+ (id)matchingKeywordResultsForRegex:(id)regex inString:(id)string needsToLowercase:(BOOL)lowercase;
+ (id)regexPatternByUncapturingPattern:(id)pattern;
+ (id)regexPatternForLanguageID:(id)d eventVocabularyArray:(id)array;
+ (id)regexPatternWithPrefix:(id)prefix suffix:(id)suffix choices:(id)choices;
+ (id)regularExpressionWithKey:(id)key generator:(id)generator;
+ (unint64_t)numberOfMatchesForRegex:(id)regex inString:(id)string needsToLowercase:(BOOL)lowercase;
@end

@implementation IPRegexToolbox

+ (id)regexPatternByUncapturingPattern:(id)pattern
{
  patternCopy = pattern;
  v11 = 0;
  v4 = lengthOfPatternAfterUncapturing(patternCopy, &v11, 0);
  if (v11)
  {
    v5 = v4;
    v6 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
    if (!v6)
    {
      +[IPRegexToolbox regexPatternByUncapturingPattern:];
    }

    v7 = v6;
    if (v5 != lengthOfPatternAfterUncapturing(patternCopy, 0, v6))
    {
      +[IPRegexToolbox regexPatternByUncapturingPattern:];
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v7 length:v5 freeWhenDone:1];
  }

  else
  {
    v8 = [patternCopy copy];
  }

  v9 = v8;

  return v9;
}

+ (id)regexPatternWithPrefix:(id)prefix suffix:(id)suffix choices:(id)choices
{
  prefixCopy = prefix;
  suffixCopy = suffix;
  choicesCopy = choices;
  v10 = lengthOfPatternAfterUncapturing(prefixCopy, 0, 0);
  v11 = lengthOfPatternAfterUncapturing(suffixCopy, 0, 0) + v10;
  if ([choicesCopy count])
  {
    v32 = suffixCopy;
    v33 = prefixCopy;
    v12 = [choicesCopy count];
    Mutable = 0;
    if (v12)
    {
      v14 = 0;
      do
      {
        if (Mutable && CFBitVectorGetBitAtIndex(Mutable, v14))
        {
          ++v14;
        }

        else
        {
          v15 = [choicesCopy objectAtIndexedSubscript:v14];
          v16 = lengthOfPatternAfterUncapturing(v15, 0, 0);
          v17 = ++v14;
          if (v14 < v12)
          {
            do
            {
              if (!Mutable || !CFBitVectorGetBitAtIndex(Mutable, v17))
              {
                v18 = [choicesCopy objectAtIndexedSubscript:v17];
                if (([v18 isEqual:v15] & 1) != 0 || objc_msgSend(v18, "hasPrefix:", v15) && ((v19 = objc_msgSend(v18, "characterAtIndex:", objc_msgSend(v15, "length")), (v19 - 63) > 0x3D) || ((1 << (v19 - 63)) & 0x3000000000000001) == 0) && v19 != 42)
                {
                  if (!Mutable)
                  {
                    Mutable = CFBitVectorCreateMutable(0, v12);
                    CFBitVectorSetCount(Mutable, v12);
                  }

                  CFBitVectorSetBitAtIndex(Mutable, v17, 1u);
                }
              }

              ++v17;
            }

            while (v12 != v17);
          }

          v11 += v16;
        }
      }

      while (v14 != v12);
      v20 = v12 + v11 - 1;
      if (Mutable)
      {
        v35.location = 0;
        v35.length = v12;
        v21 = 0;
        v20 -= CFBitVectorGetCountOfBit(Mutable, v35, 1u);
LABEL_30:
        v26 = malloc_type_malloc(2 * v20, 0x1000040BDFB0063uLL);
        if (!v26)
        {
          +[IPRegexToolbox regexPatternWithPrefix:suffix:choices:];
        }

        v27 = v26;
        v28 = lengthOfPatternAfterUncapturing(v33, 0, v26);
        if (v12)
        {
          for (i = 0; i != v12; ++i)
          {
            if ((v21 & 1) != 0 || !CFBitVectorGetBitAtIndex(Mutable, i))
            {
              if (i)
              {
                v27[v28++] = 124;
              }

              v30 = [choicesCopy objectAtIndexedSubscript:i];
              v28 += lengthOfPatternAfterUncapturing(v30, 0, &v27[v28]);
            }
          }
        }

        if ((v21 & 1) == 0)
        {
          CFRelease(Mutable);
        }

        suffixCopy = v32;
        if (lengthOfPatternAfterUncapturing(v32, 0, &v27[v28]) + v28 != v20)
        {
          +[IPRegexToolbox regexPatternWithPrefix:suffix:choices:];
        }

        v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v27 length:v20 freeWhenDone:1];
        prefixCopy = v33;
        goto LABEL_43;
      }
    }

    else
    {
      v20 = v11 - 1;
    }

    v21 = 1;
    goto LABEL_30;
  }

  if (v11)
  {
    v22 = malloc_type_malloc(2 * v11, 0x1000040BDFB0063uLL);
    if (!v22)
    {
      +[IPRegexToolbox regexPatternWithPrefix:suffix:choices:];
    }

    v23 = v22;
    v24 = lengthOfPatternAfterUncapturing(prefixCopy, 0, v22);
    if (lengthOfPatternAfterUncapturing(suffixCopy, 0, v23 + 2 * v24) + v24 != v11)
    {
      +[IPRegexToolbox regexPatternWithPrefix:suffix:choices:];
    }

    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v23 length:v11 freeWhenDone:1];
  }

  else
  {
    v25 = &stru_285AD0E88;
  }

LABEL_43:

  return v25;
}

+ (id)regexPatternForLanguageID:(id)d eventVocabularyArray:(id)array
{
  dCopy = d;
  arrayCopy = array;
  if ([dCopy hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(dCopy, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(dCopy, "hasPrefix:", @"ko") & 1) != 0 || (objc_msgSend(dCopy, "hasPrefix:", @"th"))
  {
    v8 = @"");
    v9 = CFSTR("(?:");
  }

  else if ([dCopy hasPrefix:@"fr"])
  {
    v8 = @"\\b");
    v9 = CFSTR("(?:\\b|[dljt]['’])(?:");
  }

  else
  {
    if ([dCopy hasPrefix:@"it"])
    {
      v9 = CFSTR("(?:\\b|[lnmcdst]['’])(?:");
    }

    else
    {
      v9 = CFSTR("\\b(?:");
    }

    v8 = @"\\b");
  }

  v10 = [self regexPatternWithPrefix:v9 suffix:v8 choices:arrayCopy];

  return v10;
}

+ (unint64_t)numberOfMatchesForRegex:(id)regex inString:(id)string needsToLowercase:(BOOL)lowercase
{
  lowercaseCopy = lowercase;
  regexCopy = regex;
  stringCopy = string;
  if ([stringCopy length])
  {
    v9 = objc_autoreleasePoolPush();
    if (lowercaseCopy && ([regexCopy options] & 1) == 0)
    {
      lowercaseString = [stringCopy lowercaseString];

      stringCopy = lowercaseString;
    }

    v11 = [stringCopy length];
    if (v11 >= 0x2710)
    {
      v12 = 10000;
    }

    else
    {
      v12 = v11;
    }

    v13 = [regexCopy numberOfMatchesInString:stringCopy options:2 range:{0, v12}];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)firstMatchingKeywordForRegex:(id)regex inString:(id)string needsToLowercase:(BOOL)lowercase
{
  lowercaseCopy = lowercase;
  regexCopy = regex;
  stringCopy = string;
  v9 = objc_autoreleasePoolPush();
  if (!stringCopy)
  {
    goto LABEL_11;
  }

  if (lowercaseCopy)
  {
    if ([regexCopy options])
    {
      v12 = 1;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      lowercaseString = [stringCopy lowercaseString];

      objc_autoreleasePoolPop(v10);
      v12 = 0;
      stringCopy = lowercaseString;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [stringCopy length];
  v14 = v13 >= 0x2710 ? 10000 : v13;
  v15 = [regexCopy rangeOfFirstMatchInString:stringCopy options:2 range:{0, v14}];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v15;
    v19 = v16;
    v20 = objc_autoreleasePoolPush();
    v21 = [stringCopy substringWithRange:{v18, v19}];
    v17 = v21;
    if (v12)
    {
      lowercaseString2 = [v21 lowercaseString];

      v17 = lowercaseString2;
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
LABEL_11:
    v17 = 0;
  }

  objc_autoreleasePoolPop(v9);

  return v17;
}

+ (id)matchingKeywordResultsForRegex:(id)regex inString:(id)string needsToLowercase:(BOOL)lowercase
{
  lowercaseCopy = lowercase;
  regexCopy = regex;
  stringCopy = string;
  v9 = objc_autoreleasePoolPush();
  if (lowercaseCopy)
  {
    lowercaseString = [stringCopy lowercaseString];

    stringCopy = lowercaseString;
  }

  v11 = [stringCopy length];
  if (v11 >= 0x2710)
  {
    v12 = 10000;
  }

  else
  {
    v12 = v11;
  }

  v13 = [regexCopy matchesInString:stringCopy options:2 range:{0, v12}];
  objc_autoreleasePoolPop(v9);

  return v13;
}

+ (BOOL)isRangeNearbyExclusionKeyword:(_NSRange)keyword text:(id)text limitToSurroundingText:(BOOL)surroundingText language:(id)language
{
  surroundingTextCopy = surroundingText;
  location = keyword.location;
  textCopy = text;
  languageCopy = language;
  if ([languageCopy isEqualToString:@"en"])
  {
    block = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __85__IPRegexToolbox_isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___block_invoke;
    v28 = &__block_descriptor_40_e5_v8__0l;
    selfCopy = self;
    if (isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___onceToken != -1)
    {
      dispatch_once(&isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___onceToken, &block);
    }

    v12 = &isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___ipExprOnceResult;
  }

  else
  {
    if (![languageCopy isEqualToString:@"fr"])
    {
      v18 = 0;
      goto LABEL_17;
    }

    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __85__IPRegexToolbox_isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___block_invoke_2;
    v23 = &__block_descriptor_40_e5_v8__0l;
    selfCopy2 = self;
    if (isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___onceToken_83 != -1)
    {
      dispatch_once(&isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___onceToken_83, &v20);
    }

    v12 = &isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___ipExprOnceResult_82;
  }

  v13 = *v12;
  v14 = v13;
  v15 = location > 0x32;
  if (surroundingTextCopy && v15)
  {
    v16 = location - 50;
  }

  else
  {
    v16 = 0;
  }

  if (surroundingTextCopy && v15)
  {
    v17 = 50;
  }

  else
  {
    v17 = location;
  }

  v18 = [v13 rangeOfFirstMatchInString:textCopy options:0 range:{v16, v17, v20, v21, v22, v23, selfCopy2, block, v26, v27, v28, selfCopy}] != 0x7FFFFFFFFFFFFFFFLL;

LABEL_17:
  return v18;
}

void __85__IPRegexToolbox_isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) regexPatternForLanguageID:@"en" eventVocabularyArray:&unk_285B08CD0];
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v3 options:0 error:0];

  v5 = isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___ipExprOnceResult;
  isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___ipExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

void __85__IPRegexToolbox_isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) regexPatternForLanguageID:@"fr" eventVocabularyArray:&unk_285B08CE8];
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v3 options:0 error:0];

  v5 = isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___ipExprOnceResult_82;
  isRangeNearbyExclusionKeyword_text_limitToSurroundingText_language___ipExprOnceResult_82 = v4;

  objc_autoreleasePoolPop(v2);
}

+ (BOOL)isRangeInsideQuotationMarks:(_NSRange)marks text:(id)text limitToSurroundingText:(BOOL)surroundingText
{
  surroundingTextCopy = surroundingText;
  location = marks.location;
  textCopy = text;
  if (isRangeInsideQuotationMarks_text_limitToSurroundingText__onceToken != -1)
  {
    +[IPRegexToolbox isRangeInsideQuotationMarks:text:limitToSurroundingText:];
  }

  v11 = 0;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = location > 0x96;
    v9 = surroundingTextCopy && v8 ? 150 : location;
    v10 = surroundingTextCopy && v8 ? location - 150 : 0;
    if ([textCopy rangeOfCharacterFromSet:isRangeInsideQuotationMarks_text_limitToSurroundingText__firstQuotationMarkCharacterSet options:4 range:{v10, v9}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [textCopy length];
      if ([textCopy rangeOfCharacterFromSet:isRangeInsideQuotationMarks_text_limitToSurroundingText__lastQuotationMarkCharacterSet options:0 range:?] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 1;
      }
    }
  }

  return v11;
}

uint64_t __74__IPRegexToolbox_isRangeInsideQuotationMarks_text_limitToSurroundingText___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"‘«“„﹃﹁『"];
  v1 = isRangeInsideQuotationMarks_text_limitToSurroundingText__firstQuotationMarkCharacterSet;
  isRangeInsideQuotationMarks_text_limitToSurroundingText__firstQuotationMarkCharacterSet = v0;

  isRangeInsideQuotationMarks_text_limitToSurroundingText__lastQuotationMarkCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"‘»”﹄﹂』"];

  return MEMORY[0x2821F96F8]();
}

+ (id)emailSubjectPrefixRegex
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__IPRegexToolbox_emailSubjectPrefixRegex__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (emailSubjectPrefixRegex__pasOnceToken6 != -1)
  {
    dispatch_once(&emailSubjectPrefixRegex__pasOnceToken6, block);
  }

  result = [emailSubjectPrefixRegex__pasExprOnceResult result];

  return result;
}

void __41__IPRegexToolbox_emailSubjectPrefixRegex__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277D425E8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__IPRegexToolbox_emailSubjectPrefixRegex__block_invoke_2;
  v6[3] = &__block_descriptor_40_e26___NSRegularExpression_8__0l;
  v6[4] = *(a1 + 32);
  v4 = [v3 initWithBlock:v6];
  v5 = emailSubjectPrefixRegex__pasExprOnceResult;
  emailSubjectPrefixRegex__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

id __41__IPRegexToolbox_emailSubjectPrefixRegex__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__IPRegexToolbox_emailSubjectPrefixRegex__block_invoke_3;
  v3[3] = &__block_descriptor_40_e26___NSRegularExpression_8__0l;
  v3[4] = *(a1 + 32);
  v1 = [IPRegexToolbox regularExpressionWithKey:@"subjectAbbreviationRegex" generator:v3];

  return v1;
}

id __41__IPRegexToolbox_emailSubjectPrefixRegex__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) regexPatternWithPrefix:@"^((" suffix:@") ?[：:])+" choices:&unk_285B08D00];
  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v1 options:0 error:0];

  return v2;
}

+ (id)regularExpressionWithKey:(id)key generator:(id)generator
{
  keyCopy = key;
  generatorCopy = generator;
  v7 = objc_autoreleasePoolPush();
  v8 = generatorCopy[2](generatorCopy);
  objc_autoreleasePoolPop(v7);

  return v8;
}

@end