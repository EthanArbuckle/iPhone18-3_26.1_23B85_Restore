@interface NSString(ITK)
- (BOOL)itk_containsAlphanumericCharacters;
- (BOOL)itk_containsNonWhitespaceCharacters;
- (BOOL)itk_isLastCharacterInRangeANewlineForRange:()ITK;
- (NSUInteger)itk_safeCharacterRangeForRange:()ITK;
- (__CFString)itk_checkedSubstringWithRange:()ITK;
- (__CFString)itk_stringByTrimmingLeadingCharactersInSet:()ITK;
- (__CFString)itk_substringWithRange:()ITK;
- (__CFString)itk_trailingTrimmedString;
- (id)itk_hexCodes;
- (id)itk_htmlStringEscapingQuotesAndLineBreaks;
- (id)itk_leadingTrimmedString;
- (id)itk_md5;
- (id)itk_sanitizedFilenameString;
- (id)itk_stringByReplacingCharactersInSet:()ITK withString:;
- (id)itk_stringByReplacingCharactersInStringMap:()ITK;
- (id)itk_stringByReplacingNewlineCharactersWithWhiteSpace;
- (id)itk_substringToIndex:()ITK;
- (id)itk_trimmedString;
- (id)itk_truncatedStringWithMaxLength:()ITK truncated:;
- (id)itk_uniqueWordsWithMinLength:()ITK;
- (uint64_t)itk_countOfCharactersInSet:()ITK;
- (uint64_t)itk_isLastCharacterANewline;
- (uint64_t)itk_lengthOfLongestLine;
- (uint64_t)itk_lineRangeIgnoringLineBreakCharactersForIndex:()ITK;
- (uint64_t)itk_numberOfLines;
- (uint64_t)itk_paragraphRangeForRange:()ITK contentEnd:;
- (uint64_t)itk_substringFromIndex:()ITK;
- (uint64_t)itk_whitespaceAndNewlineCoalescedString;
- (uint64_t)itk_wordCount;
- (void)itk_enumerateContentLineRangesInRange:()ITK usingBlock:;
- (void)itk_enumerateParagraphsInRange:()ITK usingBlock:;
@end

@implementation NSString(ITK)

- (id)itk_hexCodes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([a1 length])
  {
    v3 = 0;
    v4 = *MEMORY[0x277CBE770];
    do
    {
      v5 = [a1 characterAtIndex:v3];
      v6 = [a1 itk_substringWithRange:{v3, 1}];
      v7 = [v6 stringByApplyingTransform:v4 reverse:0];
      [v2 appendFormat:@"%lu: U+%04x %@\n", v3, v5, v7];

      ++v3;
    }

    while (v3 < [a1 length]);
  }

  v8 = [v2 copy];

  return v8;
}

- (id)itk_md5
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = [v1 itk_md5];

  return v2;
}

- (id)itk_htmlStringEscapingQuotesAndLineBreaks
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [&unk_286710BA8 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(&unk_286710BA8);
        }

        v7 = *(*(&v11 + 1) + 8 * v5);
        v8 = [v7 objectAtIndexedSubscript:0];
        v9 = [v7 objectAtIndexedSubscript:1];
        v1 = [v6 stringByReplacingOccurrencesOfString:v8 withString:v9];

        ++v5;
        v6 = v1;
      }

      while (v3 != v5);
      v3 = [&unk_286710BA8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  return v1;
}

- (id)itk_trimmedString
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

- (__CFString)itk_trailingTrimmedString
{
  if ([a1 length])
  {
    v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v3 = [a1 length] + 1;
    v4 = &stru_28670F9B0;
    while (v3 - 2 >= 1)
    {
      --v3;
      if (([v2 characterIsMember:{objc_msgSend(a1, "characterAtIndex:")}] & 1) == 0)
      {
        v4 = [a1 substringToIndex:v3];
        break;
      }
    }
  }

  else
  {
    v4 = &stru_28670F9B0;
  }

  return v4;
}

- (id)itk_leadingTrimmedString
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 itk_stringByTrimmingLeadingCharactersInSet:v2];

  return v3;
}

- (uint64_t)itk_whitespaceAndNewlineCoalescedString
{
  if (itk_whitespaceAndNewlineCoalescedString_onceToken != -1)
  {
    [NSString(ITK) itk_whitespaceAndNewlineCoalescedString];
  }

  v2 = itk_whitespaceAndNewlineCoalescedString_regex;
  v3 = [a1 length];

  return [v2 stringByReplacingMatchesInString:a1 options:0 range:0 withTemplate:{v3, @" "}];
}

- (id)itk_sanitizedFilenameString
{
  v1 = a1;
  if ([v1 length])
  {
    if ([v1 length] >= 0x81)
    {
      v2 = [v1 itk_substringToIndex:128];

      v1 = v2;
    }

    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"///\\?%*|<>:"];
    v4 = [v1 itk_stringByReplacingCharactersInSet:v3 withString:&stru_28670F9B0];

    v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
    v6 = [v5 mutableCopy];

    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    [v6 formUnionWithCharacterSet:v7];

    v1 = [v4 stringByTrimmingCharactersInSet:v6];
  }

  v8 = [v1 lastPathComponent];

  return v8;
}

- (uint64_t)itk_lineRangeIgnoringLineBreakCharactersForIndex:()ITK
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

- (uint64_t)itk_isLastCharacterANewline
{
  v2 = [a1 length];

  return [a1 itk_isLastCharacterInRangeANewlineForRange:{0, v2}];
}

- (uint64_t)itk_numberOfLines
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

- (uint64_t)itk_wordCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [a1 itk_range];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__NSString_ITK__itk_wordCount__block_invoke;
  v6[3] = &unk_2797AF018;
  v6[4] = &v7;
  [a1 enumerateSubstringsInRange:v2 options:v3 usingBlock:{1539, v6}];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)itk_uniqueWordsWithMinLength:()ITK
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc(MEMORY[0x277CCAAE8]);
  v25[0] = *MEMORY[0x277CCA408];
  v7 = v25[0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v9 = [v6 initWithTagSchemes:v8 options:0];

  [v9 setString:a1];
  v10 = [a1 length];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__NSString_ITK__itk_uniqueWordsWithMinLength___block_invoke;
  v21[3] = &unk_2797AF040;
  v24 = a3;
  v11 = v5;
  v22 = v11;
  v23 = a1;
  [v9 enumerateTagsInRange:0 scheme:v10 options:v7 usingBlock:{6, v21}];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__NSString_ITK__itk_uniqueWordsWithMinLength___block_invoke_95;
  v14[3] = &unk_2797AF068;
  v14[4] = &v15;
  [v11 enumerateObjectsUsingBlock:v14];
  v12 = [v16[5] copy];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (BOOL)itk_containsNonWhitespaceCharacters
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [v2 invertedSet];

  v4 = [a1 rangeOfCharacterFromSet:v3] != 0x7FFFFFFFFFFFFFFFLL;
  return v4;
}

- (BOOL)itk_containsAlphanumericCharacters
{
  v2 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v3 = [a1 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (void)itk_enumerateParagraphsInRange:()ITK usingBlock:
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

- (void)itk_enumerateContentLineRangesInRange:()ITK usingBlock:
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

- (uint64_t)itk_substringFromIndex:()ITK
{
  v2 = [a1 rangeOfComposedCharacterSequenceAtIndex:?];

  return [a1 substringFromIndex:v2];
}

- (id)itk_substringToIndex:()ITK
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

- (__CFString)itk_substringWithRange:()ITK
{
  v7 = [a1 itk_range];
  v9 = ITKClampRange(a3, a4, v7, v8);
  if (v10)
  {
    v11 = [a1 rangeOfComposedCharacterSequencesForRange:{v9, v10}];
    v13 = [a1 substringWithRange:{v11, v12}];
  }

  else
  {
    v13 = &stru_28670F9B0;
  }

  return v13;
}

- (__CFString)itk_checkedSubstringWithRange:()ITK
{
  if ([a1 itk_rangeIsValid:?])
  {
    v7 = [a1 itk_substringWithRange:{a3, a4}];
  }

  else
  {
    v7 = &stru_28670F9B0;
  }

  return v7;
}

- (id)itk_stringByReplacingNewlineCharactersWithWhiteSpace
{
  v2 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [a1 itk_stringByReplacingCharactersInSet:v2 withString:@" "];

  return v3;
}

- (id)itk_stringByReplacingCharactersInSet:()ITK withString:
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

- (id)itk_stringByReplacingCharactersInStringMap:()ITK
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = a1;
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
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

        v10 = [MEMORY[0x277CCAC68] escapedPatternForString:*(*(&v38 + 1) + 8 * i)];
        [v5 appendString:v10];

        [v5 appendString:@"|"];
      }

      v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v7);
  }

  if ([v5 length])
  {
    [v5 replaceCharactersInRange:objc_msgSend(v5 withString:{"length") - 1, 1, &stru_28670F9B0}];
  }

  [v5 appendString:@""]);
  v24 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v5 options:0 error:0];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v11 = [v26 length];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __60__NSString_ITK__itk_stringByReplacingCharactersInStringMap___block_invoke;
  v31[3] = &unk_2797AF090;
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
          [ITKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[NSString(ITK) itk_stringByReplacingCharactersInStringMap:]" simulateCrash:0 showAlert:0 format:@"nil replacement string replacestring map"];
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

- (uint64_t)itk_paragraphRangeForRange:()ITK contentEnd:
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

- (uint64_t)itk_lengthOfLongestLine
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__NSString_ITK__itk_lengthOfLongestLine__block_invoke;
  v3[3] = &unk_2797AF068;
  v3[4] = &v4;
  [a1 enumerateLinesUsingBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (BOOL)itk_isLastCharacterInRangeANewlineForRange:()ITK
{
  v7 = [a1 itk_safeCharacterRangeForRange:?];
  v9 = 0;
  if (a3 == v7 && a4 == v8)
  {
    v10 = [a1 itk_substringWithRange:{v7, v8}];
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

- (NSUInteger)itk_safeCharacterRangeForRange:()ITK
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

- (uint64_t)itk_countOfCharactersInSet:()ITK
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

- (__CFString)itk_stringByTrimmingLeadingCharactersInSet:()ITK
{
  v4 = [a3 invertedSet];
  v5 = [a1 rangeOfCharacterFromSet:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &stru_28670F9B0;
  }

  else if (v5)
  {
    v6 = [a1 itk_substringFromIndex:v5];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (id)itk_truncatedStringWithMaxLength:()ITK truncated:
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
    v7 = [a1 itk_substringWithRange:{0, a3}];
    v8 = [v7 length];
    if (v8 == [a1 length])
    {
      v9 = v7;
    }

    else
    {
      v10 = [v7 itk_trailingTrimmedString];
      v9 = [v10 stringByAppendingString:@"…"];

      if (a4)
      {
        *a4 = 1;
      }
    }
  }

  return v9;
}

@end