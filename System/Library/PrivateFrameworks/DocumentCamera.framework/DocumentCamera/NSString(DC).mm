@interface NSString(DC)
- (id)dc_sanitizedFilenameString;
- (id)dc_stringByReplacingCharactersInSet:()DC withString:;
- (id)dc_stringByReplacingCharactersInStringMap:()DC;
- (id)dc_stringByReplacingNewlineCharactersWithWhiteSpace;
- (id)dc_substringToIndex:()DC;
- (id)dc_trimmedString;
- (uint64_t)dc_lengthOfLongestLine;
- (uint64_t)dc_numberOfLines;
- (uint64_t)dc_paragraphRangeForRange:()DC contentEnd:;
- (uint64_t)dc_substringFromIndex:()DC;
- (uint64_t)dc_substringWithRange:()DC;
- (uint64_t)dc_whitespaceAndNewlineCoalescedString;
- (void)dc_enumerateContentLineRangesInRange:()DC usingBlock:;
- (void)dc_enumerateParagraphsInRange:()DC usingBlock:;
@end

@implementation NSString(DC)

- (id)dc_trimmedString
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

- (uint64_t)dc_whitespaceAndNewlineCoalescedString
{
  if (dc_whitespaceAndNewlineCoalescedString_onceToken != -1)
  {
    [NSString(DC) dc_whitespaceAndNewlineCoalescedString];
  }

  v2 = dc_whitespaceAndNewlineCoalescedString_regex;
  v3 = [a1 length];

  return [v2 stringByReplacingMatchesInString:a1 options:0 range:0 withTemplate:{v3, @" "}];
}

- (id)dc_sanitizedFilenameString
{
  v1 = a1;
  if ([v1 length])
  {
    if ([v1 length] >= 0x81)
    {
      v2 = [v1 dc_substringToIndex:128];

      v1 = v2;
    }

    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"///\\?%*|<>:"];
    v4 = [v1 dc_stringByReplacingCharactersInSet:v3 withString:&stru_285C55A80];

    v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
    v6 = [v5 mutableCopy];

    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    [v6 formUnionWithCharacterSet:v7];

    v1 = [v4 stringByTrimmingCharactersInSet:v6];
  }

  return v1;
}

- (uint64_t)dc_numberOfLines
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

- (void)dc_enumerateParagraphsInRange:()DC usingBlock:
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

- (void)dc_enumerateContentLineRangesInRange:()DC usingBlock:
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

- (uint64_t)dc_substringFromIndex:()DC
{
  v2 = [a1 rangeOfComposedCharacterSequenceAtIndex:?];

  return [a1 substringFromIndex:v2];
}

- (id)dc_substringToIndex:()DC
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

- (uint64_t)dc_substringWithRange:()DC
{
  v3 = [a1 rangeOfComposedCharacterSequencesForRange:?];

  return [a1 substringWithRange:{v3, v2}];
}

- (id)dc_stringByReplacingNewlineCharactersWithWhiteSpace
{
  v2 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [a1 dc_stringByReplacingCharactersInSet:v2 withString:@" "];

  return v3;
}

- (id)dc_stringByReplacingCharactersInSet:()DC withString:
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

- (id)dc_stringByReplacingCharactersInStringMap:()DC
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = a1;
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v5 appendString:@"()"];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = v4;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v7)
  {
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [MEMORY[0x277CCAC68] escapedPatternForString:*(*(&v41 + 1) + 8 * i)];
        [v5 appendString:v10];

        [v5 appendString:@"|"];
      }

      v7 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v7);
  }

  if ([v5 length])
  {
    [v5 replaceCharactersInRange:objc_msgSend(v5 withString:{"length") - 1, 1, &stru_285C55A80}];
  }

  [v5 appendString:@""]);
  v25 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v5 options:0 error:0];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__5;
  v39 = __Block_byref_object_dispose__5;
  v40 = 0;
  v11 = [v27 length];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __58__NSString_DC__dc_stringByReplacingCharactersInStringMap___block_invoke;
  v34[3] = &unk_278F93FE0;
  v34[4] = &v35;
  [v25 enumerateMatchesInString:v27 options:0 range:0 usingBlock:{v11, v34}];
  if ([v36[5] count])
  {
    v12 = [v27 mutableCopy];
  }

  else
  {
    v12 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = [v36[5] reverseObjectEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v45 count:16];
  if (v14)
  {
    v15 = *v31;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [*(*(&v30 + 1) + 8 * j) rangeValue];
        v19 = v18;
        v20 = [v27 substringWithRange:{v17, v18}];
        v21 = [v26 objectForKeyedSubscript:v20];
        if (v21)
        {
          [v12 replaceCharactersInRange:v17 withString:{v19, v21}];
        }

        else
        {
          v22 = os_log_create("com.apple.documentcamera", "");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(NSString(DC) *)&buf dc_stringByReplacingCharactersInStringMap:v29, v22];
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v30 objects:v45 count:16];
    }

    while (v14);
  }

  if (v12)
  {
    v23 = [v12 copy];

    v27 = v23;
  }

  _Block_object_dispose(&v35, 8);

  return v27;
}

- (uint64_t)dc_paragraphRangeForRange:()DC contentEnd:
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

- (uint64_t)dc_lengthOfLongestLine
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__NSString_DC__dc_lengthOfLongestLine__block_invoke;
  v3[3] = &unk_278F94008;
  v3[4] = &v4;
  [a1 enumerateLinesUsingBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (void)dc_stringByReplacingCharactersInStringMap:()DC .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "nil replacement string replacestring map", buf, 2u);
}

@end