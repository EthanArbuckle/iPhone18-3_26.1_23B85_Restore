@interface NSString(IC)
+ (__CFString)ic_shortNameFromGivenName:()IC familyName:;
+ (id)ic_calculateEqualsSignString;
+ (id)ic_calculateGraphExpressionString;
+ (id)ic_newURLForContentID:()IC percentEscaped:;
- (BOOL)ic_canConvertToTag;
- (BOOL)ic_containsAlphanumericCharacters;
- (BOOL)ic_containsNonWhitespaceAndAttachmentCharacters;
- (BOOL)ic_containsNonWhitespaceCharacters;
- (BOOL)ic_containsWhitespaceCharacters;
- (BOOL)ic_isLastCharacterInRangeANewlineForRange:()IC;
- (NSUInteger)ic_safeCharacterRangeForRange:()IC;
- (__CFString)ic_hashtagDisplayText;
- (__CFString)ic_stringByTrimmingLeadingCharactersInSet:()IC;
- (__CFString)ic_trailingTrimmedString;
- (id)ic_attributedString;
- (id)ic_checkedSubstringWithRange:()IC;
- (id)ic_htmlStringEscapingQuotesAndLineBreaks;
- (id)ic_leadingTrimmedString;
- (id)ic_leftToRightString;
- (id)ic_md5;
- (id)ic_mentionString;
- (id)ic_nilWhenEmpty;
- (id)ic_rightToLeftString;
- (id)ic_sanitizedFilenameString;
- (id)ic_sha256;
- (id)ic_stringByRemovingAttachmentCharacters;
- (id)ic_stringByRemovingLanguageDirectionCharacters;
- (id)ic_stringByRemovingWhitespaceOnlyLines;
- (id)ic_stringByReplacingCharactersInSet:()IC withString:;
- (id)ic_stringByReplacingCharactersInStringMap:()IC;
- (id)ic_stringByReplacingLeadingFullWidthHashSignIfPossible;
- (id)ic_stringByReplacingNewlineCharactersWithWhiteSpace;
- (id)ic_stringWithoutSuffix:()IC;
- (id)ic_substringToIndex:()IC;
- (id)ic_tokenSafeText;
- (id)ic_trimmedString;
- (id)ic_truncatedStringWithMaxLength:()IC truncated:;
- (id)ic_uniqueWordsWithMinLength:()IC;
- (id)ic_withHashtagPrefix;
- (id)ic_withoutHashtagPrefix;
- (uint64_t)ic_containsHashtagPrefix;
- (uint64_t)ic_countOfCharactersInSet:()IC;
- (uint64_t)ic_endsWithDelimeter:()IC;
- (uint64_t)ic_isLastCharacterANewline;
- (uint64_t)ic_isNumeric;
- (uint64_t)ic_lengthOfLongestLine;
- (uint64_t)ic_lineRangeIgnoringLineBreakCharactersForIndex:()IC;
- (uint64_t)ic_numberOfLines;
- (uint64_t)ic_paragraphRangeForRange:()IC contentEnd:;
- (uint64_t)ic_range:()IC onlyContainsCharacterSet:;
- (uint64_t)ic_rangeEncapsulatesWord:()IC;
- (uint64_t)ic_sentenceRangeForRange:()IC;
- (uint64_t)ic_startsWithDelimeter:()IC;
- (uint64_t)ic_substringFromIndex:()IC;
- (uint64_t)ic_substringWithRange:()IC;
- (uint64_t)ic_whitespaceAndNewlineCoalescedString;
- (void)ic_enumerateContentLineRangesInRange:()IC usingBlock:;
- (void)ic_enumerateParagraphsInRange:()IC usingBlock:;
@end

@implementation NSString(IC)

- (BOOL)ic_containsNonWhitespaceCharacters
{
  if (ic_containsNonWhitespaceCharacters_onceToken != -1)
  {
    [NSString(IC) ic_containsNonWhitespaceCharacters];
  }

  return [self rangeOfCharacterFromSet:ic_containsNonWhitespaceCharacters_invertedWhitespaces] != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)ic_nilWhenEmpty
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

+ (id)ic_calculateEqualsSignString
{
  v2 = MEMORY[0x1E696AEC0];
  ic_thinSpaceCharacterString = [self ic_thinSpaceCharacterString];
  ic_equalsSignCharacterString = [self ic_equalsSignCharacterString];
  ic_thinSpaceCharacterString2 = [self ic_thinSpaceCharacterString];
  v6 = [v2 stringWithFormat:@"%@%@%@", ic_thinSpaceCharacterString, ic_equalsSignCharacterString, ic_thinSpaceCharacterString2];

  return v6;
}

+ (id)ic_calculateGraphExpressionString
{
  v1 = MEMORY[0x1E696AEC0];
  ic_calculateEqualsSignString = [self ic_calculateEqualsSignString];
  v3 = [v1 stringWithFormat:@"y%@", ic_calculateEqualsSignString];

  return v3;
}

- (id)ic_leftToRightString
{
  v2 = MEMORY[0x1E696AEC0];
  ic_leftToRightCharacterString = [objc_opt_class() ic_leftToRightCharacterString];
  v4 = [v2 stringWithFormat:@"%@%@", ic_leftToRightCharacterString, self];

  return v4;
}

- (id)ic_rightToLeftString
{
  v2 = MEMORY[0x1E696AEC0];
  ic_rightToLeftCharacterString = [objc_opt_class() ic_rightToLeftCharacterString];
  v4 = [v2 stringWithFormat:@"%@%@", ic_rightToLeftCharacterString, self];

  return v4;
}

- (id)ic_md5
{
  ic_dataValue = [self ic_dataValue];
  ic_md5 = [ic_dataValue ic_md5];

  return ic_md5;
}

- (id)ic_sha256
{
  ic_dataValue = [self ic_dataValue];
  ic_sha256 = [ic_dataValue ic_sha256];

  return ic_sha256;
}

- (id)ic_htmlStringEscapingQuotesAndLineBreaks
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [&unk_1F4FD7350 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      v5 = 0;
      v6 = selfCopy;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&unk_1F4FD7350);
        }

        v7 = *(*(&v11 + 1) + 8 * v5);
        v8 = [v7 objectAtIndexedSubscript:0];
        v9 = [v7 objectAtIndexedSubscript:1];
        selfCopy = [v6 stringByReplacingOccurrencesOfString:v8 withString:v9];

        ++v5;
        v6 = selfCopy;
      }

      while (v3 != v5);
      v3 = [&unk_1F4FD7350 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  return selfCopy;
}

- (id)ic_trimmedString
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (__CFString)ic_trailingTrimmedString
{
  if ([self length])
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v3 = [self length] + 1;
    v4 = &stru_1F4FCDA88;
    while (1)
    {
      v5 = v3 - 2;
      if (v3 - 2 < 0)
      {
        break;
      }

      --v3;
      if (([whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", v5)}] & 1) == 0)
      {
        v4 = [self substringToIndex:v3];
        break;
      }
    }
  }

  else
  {
    v4 = &stru_1F4FCDA88;
  }

  return v4;
}

- (id)ic_leadingTrimmedString
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self ic_stringByTrimmingLeadingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (uint64_t)ic_whitespaceAndNewlineCoalescedString
{
  if (ic_whitespaceAndNewlineCoalescedString_onceToken != -1)
  {
    [NSString(IC) ic_whitespaceAndNewlineCoalescedString];
  }

  v2 = ic_whitespaceAndNewlineCoalescedString_regex;
  v3 = [self length];

  return [v2 stringByReplacingMatchesInString:self options:0 range:0 withTemplate:{v3, @" "}];
}

- (id)ic_sanitizedFilenameString
{
  v1 = [self copy];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [v1 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"."];
  v5 = [v3 ic_stringByTrimmingLeadingCharactersInSet:v4];

  ic_illegalFilenameCharacterSet = [MEMORY[0x1E696AB08] ic_illegalFilenameCharacterSet];
  v7 = [v5 ic_stringByReplacingCharactersInSet:ic_illegalFilenameCharacterSet withString:&stru_1F4FCDA88];

  if ([v7 length] > 0x80)
  {
    pathExtension = [v7 pathExtension];
    if ([pathExtension length])
    {
      stringByDeletingPathExtension = [v7 stringByDeletingPathExtension];
      v11 = [stringByDeletingPathExtension ic_substringToIndex:{126 - objc_msgSend(pathExtension, "length")}];

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v11, pathExtension];
    }

    else
    {
      v8 = [v7 ic_substringToIndex:127];
    }
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (uint64_t)ic_lineRangeIgnoringLineBreakCharactersForIndex:()IC
{
  location = [self lineRangeForRange:{a3, 0}];
  length = v5;
  v7 = [@"\u2028" characterAtIndex:0];
  v8 = location - 1;
  if (location - 1 >= 1)
  {
    do
    {
      if ([self characterAtIndex:v8] != v7)
      {
        break;
      }

      v16.location = [self lineRangeForRange:{v8, 0}];
      v16.length = v9;
      v14.location = location;
      v14.length = length;
      v10 = NSUnionRange(v14, v16);
      location = v10.location;
      length = v10.length;
      v8 = v10.location - 1;
    }

    while ((v10.location - 1) > 0);
  }

  for (i = location + length; (i - 1) >= 0 && i < [self length] && objc_msgSend(self, "characterAtIndex:", i - 1) == v7; i = v12.location + v12.length)
  {
    v15.location = [self lineRangeForRange:{i, 0}];
    v17.location = location;
    v17.length = length;
    v12 = NSUnionRange(v15, v17);
    location = v12.location;
    length = v12.length;
  }

  return location;
}

- (id)ic_stringByRemovingAttachmentCharacters
{
  ic_attachmentCharacterString = [objc_opt_class() ic_attachmentCharacterString];
  v3 = [self stringByReplacingOccurrencesOfString:ic_attachmentCharacterString withString:&stru_1F4FCDA88];

  return v3;
}

- (id)ic_stringByRemovingLanguageDirectionCharacters
{
  v1 = MEMORY[0x1E696AEC0];
  selfCopy = self;
  ic_leftToRightCharacterString = [v1 ic_leftToRightCharacterString];
  v4 = [selfCopy stringByReplacingOccurrencesOfString:ic_leftToRightCharacterString withString:&stru_1F4FCDA88];

  ic_rightToLeftCharacterString = [MEMORY[0x1E696AEC0] ic_rightToLeftCharacterString];
  v6 = [v4 stringByReplacingOccurrencesOfString:ic_rightToLeftCharacterString withString:&stru_1F4FCDA88];

  return v6;
}

- (id)ic_stringByRemovingWhitespaceOnlyLines
{
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [self componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_127];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = [v5 componentsJoinedByString:@"\n"];

  return v6;
}

- (uint64_t)ic_isLastCharacterANewline
{
  v2 = [self length];

  return [self ic_isLastCharacterInRangeANewlineForRange:{0, v2}];
}

- (BOOL)ic_canConvertToTag
{
  v1 = [self stringByApplyingTransform:*MEMORY[0x1E695DA38] reverse:0];
  v2 = 0;
  if ([v1 length] <= 0x4C)
  {
    ic_hashtagAllowedCharacterSet = [MEMORY[0x1E696AB08] ic_hashtagAllowedCharacterSet];
    ic_hashtagCharacterString = [objc_opt_class() ic_hashtagCharacterString];
    if ([v1 hasPrefix:ic_hashtagCharacterString])
    {
      v5 = [v1 substringFromIndex:1];
    }

    else
    {
      v5 = v1;
    }

    v6 = v5;

    v7 = [v6 ic_stringByReplacingCharactersInSet:ic_hashtagAllowedCharacterSet withString:&stru_1F4FCDA88];
    v2 = [v1 ic_containsHashtagPrefix] && objc_msgSend(v1, "length") != 1 && objc_msgSend(v7, "length") == 0;
  }

  return v2;
}

- (uint64_t)ic_numberOfLines
{
  v2 = [self length];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [self lineRangeForRange:{v5, 0}];
    v5 = v6 + v7;
    ++v4;
  }

  while (v6 + v7 < v3);
  return v4;
}

- (id)ic_uniqueWordsWithMinLength:()IC
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_alloc(MEMORY[0x1E696AD00]);
  v25[0] = *MEMORY[0x1E696A550];
  v7 = v25[0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v9 = [v6 initWithTagSchemes:v8 options:0];

  [v9 setString:self];
  v10 = [self length];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44__NSString_IC__ic_uniqueWordsWithMinLength___block_invoke;
  v21[3] = &unk_1E84858D0;
  v24 = a3;
  v11 = v5;
  v22 = v11;
  selfCopy = self;
  [v9 enumerateTagsInRange:0 scheme:v10 options:v7 usingBlock:{6, v21}];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__NSString_IC__ic_uniqueWordsWithMinLength___block_invoke_133;
  v14[3] = &unk_1E8484F60;
  v14[4] = &v15;
  [v11 enumerateObjectsUsingBlock:v14];
  v12 = [v16[5] copy];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (BOOL)ic_containsNonWhitespaceAndAttachmentCharacters
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NSString_IC__ic_containsNonWhitespaceAndAttachmentCharacters__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  if (ic_containsNonWhitespaceAndAttachmentCharacters_onceToken != -1)
  {
    dispatch_once(&ic_containsNonWhitespaceAndAttachmentCharacters_onceToken, block);
  }

  return [self rangeOfCharacterFromSet:ic_containsNonWhitespaceAndAttachmentCharacters_invertedWhitespaceAndAttachmentCharacters] != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)ic_containsAlphanumericCharacters
{
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v3 = [self rangeOfCharacterFromSet:alphanumericCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (BOOL)ic_containsWhitespaceCharacters
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (uint64_t)ic_containsHashtagPrefix
{
  result = [self length];
  if (result)
  {
    v3 = [self characterAtIndex:0];
    return v3 == 35 || v3 == 65283;
  }

  return result;
}

- (uint64_t)ic_isNumeric
{
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:self];
  v4 = [decimalDigitCharacterSet isSupersetOfSet:v3];

  return v4;
}

- (void)ic_enumerateParagraphsInRange:()IC usingBlock:
{
  v8 = a5;
  v9 = a3 + a4;
  v10 = [self length];
  if (v9 >= v10)
  {
    v9 = v10;
  }

  v14 = 0;
  do
  {
    if (a3 >= v9)
    {
      break;
    }

    v12 = 0;
    v13 = 0;
    v11 = 0;
    [self getParagraphStart:&v13 end:&v12 contentsEnd:&v11 forRange:{a3, 0}];
    v8[2](v8, v13, v12, v11, &v14);
    a3 = v12;
  }

  while (v14 != 1);
}

- (void)ic_enumerateContentLineRangesInRange:()IC usingBlock:
{
  v8 = a5;
  v9 = a3 + a4;
  v10 = [self length];
  v13 = 0;
  v14 = a3;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  v12 = 0;
  v11 = 0;
  do
  {
    [self getLineStart:&v14 end:&v13 contentsEnd:&v12 forRange:{a3, 0}];
    v8[2](v8, v14, v12 - v14, &v11);
    a3 = v13;
    v14 = v13;
  }

  while (v13 < v9 && (v11 & 1) == 0);
}

- (uint64_t)ic_substringFromIndex:()IC
{
  v2 = [self rangeOfComposedCharacterSequenceAtIndex:?];

  return [self substringFromIndex:v2];
}

- (id)ic_substringToIndex:()IC
{
  if ([self length])
  {
    v5 = [self length];
    if (v5 - 1 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v5 - 1;
    }

    v7 = [self rangeOfComposedCharacterSequenceAtIndex:v6];
    v9 = [self substringToIndex:v7 + v8];
  }

  else
  {
    v9 = [self copy];
  }

  return v9;
}

- (uint64_t)ic_substringWithRange:()IC
{
  v3 = [self rangeOfComposedCharacterSequencesForRange:?];

  return [self substringWithRange:{v3, v2}];
}

- (id)ic_checkedSubstringWithRange:()IC
{
  if ([self ic_rangeIsValid:?])
  {
    v7 = [self ic_substringWithRange:{a3, a4}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)ic_stringByReplacingNewlineCharactersWithWhiteSpace
{
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [self ic_stringByReplacingCharactersInSet:newlineCharacterSet withString:@" "];

  return v3;
}

- (id)ic_stringByReplacingCharactersInSet:()IC withString:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  v9 = [selfCopy rangeOfCharacterFromSet:v6];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = v9;
    v13 = v10;
    v11 = 0;
    do
    {
      if (!v11)
      {
        v11 = [selfCopy mutableCopy];
      }

      [v11 replaceCharactersInRange:v12 withString:{v13, v7}];
      v12 = [v11 rangeOfCharacterFromSet:v6 options:2 range:{v12, objc_msgSend(v11, "length") - v12}];
      v13 = v14;
    }

    while (v12 != 0x7FFFFFFFFFFFFFFFLL);
    if (v11)
    {
      v15 = [v11 copy];

      selfCopy = v15;
    }
  }

  return selfCopy;
}

- (id)ic_stringByReplacingCharactersInStringMap:()IC
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v5, "appendString:", @"(");
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = v4;
  allKeys = [v4 allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = [MEMORY[0x1E696AE70] escapedPatternForString:*(*(&v38 + 1) + 8 * i)];
        [v5 appendString:v10];

        [v5 appendString:@"|"];
      }

      v7 = [allKeys countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v7);
  }

  if ([v5 length])
  {
    [v5 replaceCharactersInRange:objc_msgSend(v5 withString:{"length") - 1, 1, &stru_1F4FCDA88}];
  }

  [v5 appendString:@""]);
  v24 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v5 options:0 error:0];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__9;
  v36 = __Block_byref_object_dispose__9;
  v37 = 0;
  v11 = [selfCopy length];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__NSString_IC__ic_stringByReplacingCharactersInStringMap___block_invoke;
  v31[3] = &unk_1E84858F8;
  v31[4] = &v32;
  [v24 enumerateMatchesInString:selfCopy options:0 range:0 usingBlock:{v11, v31}];
  if ([v33[5] count])
  {
    v12 = [selfCopy mutableCopy];
  }

  else
  {
    v12 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  reverseObjectEnumerator = [v33[5] reverseObjectEnumerator];
  v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        rangeValue = [*(*(&v27 + 1) + 8 * j) rangeValue];
        v19 = v18;
        v20 = [selfCopy substringWithRange:{rangeValue, v18}];
        v21 = [v25 objectForKeyedSubscript:v20];
        if (v21)
        {
          [v12 replaceCharactersInRange:rangeValue withString:{v19, v21}];
        }

        else
        {
          [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[NSString(IC) ic_stringByReplacingCharactersInStringMap:]" simulateCrash:1 showAlert:0 format:@"nil replacement string replacestring map"];
        }
      }

      v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v42 count:16];
    }

    while (v14);
  }

  if (v12)
  {
    v22 = [v12 copy];

    selfCopy = v22;
  }

  _Block_object_dispose(&v32, 8);

  return selfCopy;
}

- (id)ic_stringByReplacingLeadingFullWidthHashSignIfPossible
{
  if ([self ic_containsHashtagPrefix])
  {
    v2 = [self substringToIndex:1];
    v3 = [self substringFromIndex:1];
    v4 = [v2 stringByApplyingTransform:*MEMORY[0x1E695DA38] reverse:0];
    selfCopy = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@%@", v4, v3];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)ic_paragraphRangeForRange:()IC contentEnd:
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  [self getParagraphStart:&v9 end:&v8 contentsEnd:&v7 forRange:{a3, a4}];
  if (a5)
  {
    *a5 = v7;
  }

  return v9;
}

- (uint64_t)ic_sentenceRangeForRange:()IC
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v14 = &unk_1D45D60DB;
  v15 = xmmword_1D45CAAD0;
  if ([self ic_rangeIsValid:?])
  {
    v7 = [self length];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__NSString_IC__ic_sentenceRangeForRange___block_invoke;
    v10[3] = &unk_1E8485920;
    v10[5] = a3;
    v10[6] = a4;
    v10[4] = &v11;
    [self enumerateSubstringsInRange:0 options:v7 usingBlock:{4, v10}];
  }

  v8 = v12[4];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (uint64_t)ic_lengthOfLongestLine
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__NSString_IC__ic_lengthOfLongestLine__block_invoke;
  v3[3] = &unk_1E8484F60;
  v3[4] = &v4;
  [self enumerateLinesUsingBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (BOOL)ic_isLastCharacterInRangeANewlineForRange:()IC
{
  v7 = [self ic_safeCharacterRangeForRange:?];
  v9 = 0;
  if (a3 == v7 && a4 == v8)
  {
    v10 = [self ic_substringWithRange:{v7, v8}];
    if ([v10 length])
    {
      v9 = [v10 characterAtIndex:{objc_msgSend(v10, "length") - 1}] == 10;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSUInteger)ic_safeCharacterRangeForRange:()IC
{
  v6 = [self length];
  if (v6 == a3)
  {
    return a3;
  }

  v7.length = v6;
  if (v6 < a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9.location = a3;
  v9.length = a4;
  v7.location = 0;

  return NSIntersectionRange(v9, v7).location;
}

- (uint64_t)ic_countOfCharactersInSet:()IC
{
  v4 = a3;
  v5 = [self rangeOfCharacterFromSet:v4 options:0 range:{0, objc_msgSend(self, "length")}];
  v6 = 0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v6 = 0;
    do
    {
      ++v6;
      v7 = [self rangeOfCharacterFromSet:v4 options:0 range:{v7 + 1, objc_msgSend(self, "length") + ~v7}];
    }

    while (v7 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v6;
}

- (__CFString)ic_stringByTrimmingLeadingCharactersInSet:()IC
{
  invertedSet = [a3 invertedSet];
  v5 = [self rangeOfCharacterFromSet:invertedSet];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = &stru_1F4FCDA88;
  }

  else if (v5)
  {
    selfCopy = [self ic_substringFromIndex:v5];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)ic_truncatedStringWithMaxLength:()IC truncated:
{
  if (a4)
  {
    *a4 = 0;
  }

  if ([self length] <= a3)
  {
    selfCopy = self;
  }

  else
  {
    v7 = [self ic_substringWithRange:{0, a3}];
    v8 = [v7 length];
    if (v8 == [self length])
    {
      selfCopy = v7;
    }

    else
    {
      ic_trailingTrimmedString = [v7 ic_trailingTrimmedString];
      selfCopy = [ic_trailingTrimmedString stringByAppendingString:@"…"];

      if (a4)
      {
        *a4 = 1;
      }
    }
  }

  return selfCopy;
}

- (id)ic_tokenSafeText
{
  localizedUppercaseString = [self localizedUppercaseString];
  v2 = [localizedUppercaseString stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

  return v2;
}

- (id)ic_withHashtagPrefix
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  ic_hashtagCharacterString = [objc_opt_class() ic_hashtagCharacterString];
  if ([v3 hasPrefix:ic_hashtagCharacterString])
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    ic_hashtagCharacterString2 = [objc_opt_class() ic_hashtagCharacterString];
    v5 = [v6 stringWithFormat:@"%@%@", ic_hashtagCharacterString2, v3];
  }

  return v5;
}

- (id)ic_withoutHashtagPrefix
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  ic_hashtagCharacterString = [objc_opt_class() ic_hashtagCharacterString];
  if ([v3 hasPrefix:ic_hashtagCharacterString])
  {
    v5 = [v3 substringFromIndex:1];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (__CFString)ic_hashtagDisplayText
{
  v2 = MEMORY[0x1E696AB08];
  ic_hashtagCharacterString = [objc_opt_class() ic_hashtagCharacterString];
  v4 = [v2 characterSetWithCharactersInString:ic_hashtagCharacterString];

  invertedSet = [v4 invertedSet];
  v6 = [self rangeOfCharacterFromSet:invertedSet];

  if (!v6)
  {
    v7 = [self copy];
    goto LABEL_5;
  }

  if ([self length] >= 2)
  {
    v7 = [self ic_substringFromIndex:1];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = &stru_1F4FCDA88;
LABEL_7:

  return v8;
}

- (id)ic_stringWithoutSuffix:()IC
{
  v4 = a3;
  v5 = [self copy];
  if ([v5 hasSuffix:v4])
  {
    v6 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(v4, "length")}];

    v5 = v6;
  }

  return v5;
}

- (id)ic_mentionString
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  ic_mentionCharacterString = [objc_opt_class() ic_mentionCharacterString];
  v5 = [v3 hasPrefix:ic_mentionCharacterString];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    ic_mentionCharacterString2 = [objc_opt_class() ic_mentionCharacterString];
    v6 = [v7 localizedStringWithFormat:@"%@%@", ic_mentionCharacterString2, v3];
  }

  return v6;
}

+ (id)ic_newURLForContentID:()IC percentEscaped:
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v7 = [v5 rangeOfString:@"<"];
  v9 = v8;
  v10 = [v6 rangeOfString:@">"];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v10 == 0x7FFFFFFFFFFFFFFFLL || v10 <= v7 + v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = [v6 substringWithRange:{v7 + v9, v10 - (v7 + v9)}];
  }

  v12 = v11;
  if (!a4)
  {
    uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v13 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

    if (v13)
    {
      goto LABEL_9;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v13 = v11;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_9:
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"cid:%@", v13];
  v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v14];

LABEL_13:
LABEL_14:

  return v15;
}

+ (__CFString)ic_shortNameFromGivenName:()IC familyName:
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] || objc_msgSend(v6, "length"))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    if ([v5 length])
    {
      [v7 setGivenName:v5];
    }

    if ([v6 length])
    {
      [v7 setFamilyName:v6];
    }

    v8 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v7 style:1 options:0];
    ic_trimmedString = [v8 ic_trimmedString];
  }

  else
  {
    ic_trimmedString = &stru_1F4FCDA88;
  }

  return ic_trimmedString;
}

- (uint64_t)ic_startsWithDelimeter:()IC
{
  if (!a3)
  {
    return 1;
  }

  v3 = [self characterAtIndex:a3 - 1];
  ic_nonDelimeterSet = [MEMORY[0x1E696AEC0] ic_nonDelimeterSet];
  v5 = [ic_nonDelimeterSet characterIsMember:v3] ^ 1;

  return v5;
}

- (uint64_t)ic_endsWithDelimeter:()IC
{
  v5 = a3 + a4;
  v6 = [self length];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == [self length])
  {
    return 1;
  }

  v9 = [self characterAtIndex:v5];
  ic_nonDelimeterSet = [MEMORY[0x1E696AEC0] ic_nonDelimeterSet];
  v8 = [ic_nonDelimeterSet characterIsMember:v9] ^ 1;

  return v8;
}

- (uint64_t)ic_rangeEncapsulatesWord:()IC
{
  result = [self ic_startsWithDelimeter:?];
  if (result)
  {

    return [self ic_endsWithDelimeter:{a3, a4}];
  }

  return result;
}

- (uint64_t)ic_range:()IC onlyContainsCharacterSet:
{
  v8 = a5;
  v17.location = [self ic_range];
  v17.length = v9;
  v16.location = a3;
  v16.length = a4;
  v10 = NSIntersectionRange(v16, v17);
  if (v10.length && (location = v10.location, v10.location < v10.location + v10.length))
  {
    v12 = v10.length - 1;
    do
    {
      v13 = v12;
      v14 = [v8 characterIsMember:{objc_msgSend(self, "characterAtIndex:", location)}];
      if (!v14)
      {
        break;
      }

      ++location;
      v12 = v13 - 1;
    }

    while (v13);
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (id)ic_attributedString
{
  v1 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self];

  return v1;
}

@end