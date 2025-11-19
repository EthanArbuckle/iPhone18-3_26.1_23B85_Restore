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

  return [a1 rangeOfCharacterFromSet:ic_containsNonWhitespaceCharacters_invertedWhitespaces] != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)ic_nilWhenEmpty
{
  if ([a1 length])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)ic_calculateEqualsSignString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 ic_thinSpaceCharacterString];
  v4 = [a1 ic_equalsSignCharacterString];
  v5 = [a1 ic_thinSpaceCharacterString];
  v6 = [v2 stringWithFormat:@"%@%@%@", v3, v4, v5];

  return v6;
}

+ (id)ic_calculateGraphExpressionString
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 ic_calculateEqualsSignString];
  v3 = [v1 stringWithFormat:@"y%@", v2];

  return v3;
}

- (id)ic_leftToRightString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_opt_class() ic_leftToRightCharacterString];
  v4 = [v2 stringWithFormat:@"%@%@", v3, a1];

  return v4;
}

- (id)ic_rightToLeftString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_opt_class() ic_rightToLeftCharacterString];
  v4 = [v2 stringWithFormat:@"%@%@", v3, a1];

  return v4;
}

- (id)ic_md5
{
  v1 = [a1 ic_dataValue];
  v2 = [v1 ic_md5];

  return v2;
}

- (id)ic_sha256
{
  v1 = [a1 ic_dataValue];
  v2 = [v1 ic_sha256];

  return v2;
}

- (id)ic_htmlStringEscapingQuotesAndLineBreaks
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
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
      v6 = v1;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(&unk_1F4FD7350);
        }

        v7 = *(*(&v11 + 1) + 8 * v5);
        v8 = [v7 objectAtIndexedSubscript:0];
        v9 = [v7 objectAtIndexedSubscript:1];
        v1 = [v6 stringByReplacingOccurrencesOfString:v8 withString:v9];

        ++v5;
        v6 = v1;
      }

      while (v3 != v5);
      v3 = [&unk_1F4FD7350 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  return v1;
}

- (id)ic_trimmedString
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

- (__CFString)ic_trailingTrimmedString
{
  if ([a1 length])
  {
    v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v3 = [a1 length] + 1;
    v4 = &stru_1F4FCDA88;
    while (1)
    {
      v5 = v3 - 2;
      if (v3 - 2 < 0)
      {
        break;
      }

      --v3;
      if (([v2 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v5)}] & 1) == 0)
      {
        v4 = [a1 substringToIndex:v3];
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
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 ic_stringByTrimmingLeadingCharactersInSet:v2];

  return v3;
}

- (uint64_t)ic_whitespaceAndNewlineCoalescedString
{
  if (ic_whitespaceAndNewlineCoalescedString_onceToken != -1)
  {
    [NSString(IC) ic_whitespaceAndNewlineCoalescedString];
  }

  v2 = ic_whitespaceAndNewlineCoalescedString_regex;
  v3 = [a1 length];

  return [v2 stringByReplacingMatchesInString:a1 options:0 range:0 withTemplate:{v3, @" "}];
}

- (id)ic_sanitizedFilenameString
{
  v1 = [a1 copy];
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];

  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"."];
  v5 = [v3 ic_stringByTrimmingLeadingCharactersInSet:v4];

  v6 = [MEMORY[0x1E696AB08] ic_illegalFilenameCharacterSet];
  v7 = [v5 ic_stringByReplacingCharactersInSet:v6 withString:&stru_1F4FCDA88];

  if ([v7 length] > 0x80)
  {
    v9 = [v7 pathExtension];
    if ([v9 length])
    {
      v10 = [v7 stringByDeletingPathExtension];
      v11 = [v10 ic_substringToIndex:{126 - objc_msgSend(v9, "length")}];

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v11, v9];
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
  location = [a1 lineRangeForRange:{a3, 0}];
  length = v5;
  v7 = [@"\u2028" characterAtIndex:0];
  v8 = location - 1;
  if (location - 1 >= 1)
  {
    do
    {
      if ([a1 characterAtIndex:v8] != v7)
      {
        break;
      }

      v16.location = [a1 lineRangeForRange:{v8, 0}];
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

  for (i = location + length; (i - 1) >= 0 && i < [a1 length] && objc_msgSend(a1, "characterAtIndex:", i - 1) == v7; i = v12.location + v12.length)
  {
    v15.location = [a1 lineRangeForRange:{i, 0}];
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
  v2 = [objc_opt_class() ic_attachmentCharacterString];
  v3 = [a1 stringByReplacingOccurrencesOfString:v2 withString:&stru_1F4FCDA88];

  return v3;
}

- (id)ic_stringByRemovingLanguageDirectionCharacters
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 ic_leftToRightCharacterString];
  v4 = [v2 stringByReplacingOccurrencesOfString:v3 withString:&stru_1F4FCDA88];

  v5 = [MEMORY[0x1E696AEC0] ic_rightToLeftCharacterString];
  v6 = [v4 stringByReplacingOccurrencesOfString:v5 withString:&stru_1F4FCDA88];

  return v6;
}

- (id)ic_stringByRemovingWhitespaceOnlyLines
{
  v2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];

  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_127];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = [v5 componentsJoinedByString:@"\n"];

  return v6;
}

- (uint64_t)ic_isLastCharacterANewline
{
  v2 = [a1 length];

  return [a1 ic_isLastCharacterInRangeANewlineForRange:{0, v2}];
}

- (BOOL)ic_canConvertToTag
{
  v1 = [a1 stringByApplyingTransform:*MEMORY[0x1E695DA38] reverse:0];
  v2 = 0;
  if ([v1 length] <= 0x4C)
  {
    v3 = [MEMORY[0x1E696AB08] ic_hashtagAllowedCharacterSet];
    v4 = [objc_opt_class() ic_hashtagCharacterString];
    if ([v1 hasPrefix:v4])
    {
      v5 = [v1 substringFromIndex:1];
    }

    else
    {
      v5 = v1;
    }

    v6 = v5;

    v7 = [v6 ic_stringByReplacingCharactersInSet:v3 withString:&stru_1F4FCDA88];
    v2 = [v1 ic_containsHashtagPrefix] && objc_msgSend(v1, "length") != 1 && objc_msgSend(v7, "length") == 0;
  }

  return v2;
}

- (uint64_t)ic_numberOfLines
{
  v2 = [a1 length];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = [a1 lineRangeForRange:{v5, 0}];
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

  [v9 setString:a1];
  v10 = [a1 length];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44__NSString_IC__ic_uniqueWordsWithMinLength___block_invoke;
  v21[3] = &unk_1E84858D0;
  v24 = a3;
  v11 = v5;
  v22 = v11;
  v23 = a1;
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
  block[4] = a1;
  if (ic_containsNonWhitespaceAndAttachmentCharacters_onceToken != -1)
  {
    dispatch_once(&ic_containsNonWhitespaceAndAttachmentCharacters_onceToken, block);
  }

  return [a1 rangeOfCharacterFromSet:ic_containsNonWhitespaceAndAttachmentCharacters_invertedWhitespaceAndAttachmentCharacters] != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)ic_containsAlphanumericCharacters
{
  v2 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v3 = [a1 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (BOOL)ic_containsWhitespaceCharacters
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (uint64_t)ic_containsHashtagPrefix
{
  result = [a1 length];
  if (result)
  {
    v3 = [a1 characterAtIndex:0];
    return v3 == 35 || v3 == 65283;
  }

  return result;
}

- (uint64_t)ic_isNumeric
{
  v2 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:a1];
  v4 = [v2 isSupersetOfSet:v3];

  return v4;
}

- (void)ic_enumerateParagraphsInRange:()IC usingBlock:
{
  v8 = a5;
  v9 = a3 + a4;
  v10 = [a1 length];
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
    [a1 getParagraphStart:&v13 end:&v12 contentsEnd:&v11 forRange:{a3, 0}];
    v8[2](v8, v13, v12, v11, &v14);
    a3 = v12;
  }

  while (v14 != 1);
}

- (void)ic_enumerateContentLineRangesInRange:()IC usingBlock:
{
  v8 = a5;
  v9 = a3 + a4;
  v10 = [a1 length];
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
    [a1 getLineStart:&v14 end:&v13 contentsEnd:&v12 forRange:{a3, 0}];
    v8[2](v8, v14, v12 - v14, &v11);
    a3 = v13;
    v14 = v13;
  }

  while (v13 < v9 && (v11 & 1) == 0);
}

- (uint64_t)ic_substringFromIndex:()IC
{
  v2 = [a1 rangeOfComposedCharacterSequenceAtIndex:?];

  return [a1 substringFromIndex:v2];
}

- (id)ic_substringToIndex:()IC
{
  if ([a1 length])
  {
    v5 = [a1 length];
    if (v5 - 1 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v5 - 1;
    }

    v7 = [a1 rangeOfComposedCharacterSequenceAtIndex:v6];
    v9 = [a1 substringToIndex:v7 + v8];
  }

  else
  {
    v9 = [a1 copy];
  }

  return v9;
}

- (uint64_t)ic_substringWithRange:()IC
{
  v3 = [a1 rangeOfComposedCharacterSequencesForRange:?];

  return [a1 substringWithRange:{v3, v2}];
}

- (id)ic_checkedSubstringWithRange:()IC
{
  if ([a1 ic_rangeIsValid:?])
  {
    v7 = [a1 ic_substringWithRange:{a3, a4}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)ic_stringByReplacingNewlineCharactersWithWhiteSpace
{
  v2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [a1 ic_stringByReplacingCharactersInSet:v2 withString:@" "];

  return v3;
}

- (id)ic_stringByReplacingCharactersInSet:()IC withString:
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = [v8 rangeOfCharacterFromSet:v6];
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
        v11 = [v8 mutableCopy];
      }

      [v11 replaceCharactersInRange:v12 withString:{v13, v7}];
      v12 = [v11 rangeOfCharacterFromSet:v6 options:2 range:{v12, objc_msgSend(v11, "length") - v12}];
      v13 = v14;
    }

    while (v12 != 0x7FFFFFFFFFFFFFFFLL);
    if (v11)
    {
      v15 = [v11 copy];

      v8 = v15;
    }
  }

  return v8;
}

- (id)ic_stringByReplacingCharactersInStringMap:()IC
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = a1;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v5, "appendString:", @"(");
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = v4;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [MEMORY[0x1E696AE70] escapedPatternForString:*(*(&v38 + 1) + 8 * i)];
        [v5 appendString:v10];

        [v5 appendString:@"|"];
      }

      v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
  v11 = [v26 length];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__NSString_IC__ic_stringByReplacingCharactersInStringMap___block_invoke;
  v31[3] = &unk_1E84858F8;
  v31[4] = &v32;
  [v24 enumerateMatchesInString:v26 options:0 range:0 usingBlock:{v11, v31}];
  if ([v33[5] count])
  {
    v12 = [v26 mutableCopy];
  }

  else
  {
    v12 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [v33[5] reverseObjectEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [*(*(&v27 + 1) + 8 * j) rangeValue];
        v19 = v18;
        v20 = [v26 substringWithRange:{v17, v18}];
        v21 = [v25 objectForKeyedSubscript:v20];
        if (v21)
        {
          [v12 replaceCharactersInRange:v17 withString:{v19, v21}];
        }

        else
        {
          [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[NSString(IC) ic_stringByReplacingCharactersInStringMap:]" simulateCrash:1 showAlert:0 format:@"nil replacement string replacestring map"];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v42 count:16];
    }

    while (v14);
  }

  if (v12)
  {
    v22 = [v12 copy];

    v26 = v22;
  }

  _Block_object_dispose(&v32, 8);

  return v26;
}

- (id)ic_stringByReplacingLeadingFullWidthHashSignIfPossible
{
  if ([a1 ic_containsHashtagPrefix])
  {
    v2 = [a1 substringToIndex:1];
    v3 = [a1 substringFromIndex:1];
    v4 = [v2 stringByApplyingTransform:*MEMORY[0x1E695DA38] reverse:0];
    v5 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@%@", v4, v3];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (uint64_t)ic_paragraphRangeForRange:()IC contentEnd:
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  [a1 getParagraphStart:&v9 end:&v8 contentsEnd:&v7 forRange:{a3, a4}];
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
  if ([a1 ic_rangeIsValid:?])
  {
    v7 = [a1 length];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__NSString_IC__ic_sentenceRangeForRange___block_invoke;
    v10[3] = &unk_1E8485920;
    v10[5] = a3;
    v10[6] = a4;
    v10[4] = &v11;
    [a1 enumerateSubstringsInRange:0 options:v7 usingBlock:{4, v10}];
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
  [a1 enumerateLinesUsingBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (BOOL)ic_isLastCharacterInRangeANewlineForRange:()IC
{
  v7 = [a1 ic_safeCharacterRangeForRange:?];
  v9 = 0;
  if (a3 == v7 && a4 == v8)
  {
    v10 = [a1 ic_substringWithRange:{v7, v8}];
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
  v6 = [a1 length];
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
  v5 = [a1 rangeOfCharacterFromSet:v4 options:0 range:{0, objc_msgSend(a1, "length")}];
  v6 = 0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v6 = 0;
    do
    {
      ++v6;
      v7 = [a1 rangeOfCharacterFromSet:v4 options:0 range:{v7 + 1, objc_msgSend(a1, "length") + ~v7}];
    }

    while (v7 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v6;
}

- (__CFString)ic_stringByTrimmingLeadingCharactersInSet:()IC
{
  v4 = [a3 invertedSet];
  v5 = [a1 rangeOfCharacterFromSet:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &stru_1F4FCDA88;
  }

  else if (v5)
  {
    v6 = [a1 ic_substringFromIndex:v5];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (id)ic_truncatedStringWithMaxLength:()IC truncated:
{
  if (a4)
  {
    *a4 = 0;
  }

  if ([a1 length] <= a3)
  {
    v9 = a1;
  }

  else
  {
    v7 = [a1 ic_substringWithRange:{0, a3}];
    v8 = [v7 length];
    if (v8 == [a1 length])
    {
      v9 = v7;
    }

    else
    {
      v10 = [v7 ic_trailingTrimmedString];
      v9 = [v10 stringByAppendingString:@"…"];

      if (a4)
      {
        *a4 = 1;
      }
    }
  }

  return v9;
}

- (id)ic_tokenSafeText
{
  v1 = [a1 localizedUppercaseString];
  v2 = [v1 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

  return v2;
}

- (id)ic_withHashtagPrefix
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  v4 = [objc_opt_class() ic_hashtagCharacterString];
  if ([v3 hasPrefix:v4])
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [objc_opt_class() ic_hashtagCharacterString];
    v5 = [v6 stringWithFormat:@"%@%@", v7, v3];
  }

  return v5;
}

- (id)ic_withoutHashtagPrefix
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  v4 = [objc_opt_class() ic_hashtagCharacterString];
  if ([v3 hasPrefix:v4])
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
  v3 = [objc_opt_class() ic_hashtagCharacterString];
  v4 = [v2 characterSetWithCharactersInString:v3];

  v5 = [v4 invertedSet];
  v6 = [a1 rangeOfCharacterFromSet:v5];

  if (!v6)
  {
    v7 = [a1 copy];
    goto LABEL_5;
  }

  if ([a1 length] >= 2)
  {
    v7 = [a1 ic_substringFromIndex:1];
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
  v5 = [a1 copy];
  if ([v5 hasSuffix:v4])
  {
    v6 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(v4, "length")}];

    v5 = v6;
  }

  return v5;
}

- (id)ic_mentionString
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  v4 = [objc_opt_class() ic_mentionCharacterString];
  v5 = [v3 hasPrefix:v4];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [objc_opt_class() ic_mentionCharacterString];
    v6 = [v7 localizedStringWithFormat:@"%@%@", v8, v3];
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
    v16 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v13 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v16];

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
    v9 = [v8 ic_trimmedString];
  }

  else
  {
    v9 = &stru_1F4FCDA88;
  }

  return v9;
}

- (uint64_t)ic_startsWithDelimeter:()IC
{
  if (!a3)
  {
    return 1;
  }

  v3 = [a1 characterAtIndex:a3 - 1];
  v4 = [MEMORY[0x1E696AEC0] ic_nonDelimeterSet];
  v5 = [v4 characterIsMember:v3] ^ 1;

  return v5;
}

- (uint64_t)ic_endsWithDelimeter:()IC
{
  v5 = a3 + a4;
  v6 = [a1 length];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == [a1 length])
  {
    return 1;
  }

  v9 = [a1 characterAtIndex:v5];
  v10 = [MEMORY[0x1E696AEC0] ic_nonDelimeterSet];
  v8 = [v10 characterIsMember:v9] ^ 1;

  return v8;
}

- (uint64_t)ic_rangeEncapsulatesWord:()IC
{
  result = [a1 ic_startsWithDelimeter:?];
  if (result)
  {

    return [a1 ic_endsWithDelimeter:{a3, a4}];
  }

  return result;
}

- (uint64_t)ic_range:()IC onlyContainsCharacterSet:
{
  v8 = a5;
  v17.location = [a1 ic_range];
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
      v14 = [v8 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", location)}];
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
  v1 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a1];

  return v1;
}

@end