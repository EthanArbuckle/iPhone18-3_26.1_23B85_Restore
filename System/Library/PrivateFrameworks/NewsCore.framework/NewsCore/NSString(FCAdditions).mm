@interface NSString(FCAdditions)
+ (id)fc_hardPaywallArticleIDWithArticleID:()FCAdditions;
+ (id)fc_string:()FCAdditions;
+ (id)stringWithValue:()FCAdditions;
+ (uint64_t)fc_string:()FCAdditions isEqualToString:;
- (BOOL)fc_isValidColorHexString;
- (id)fc_lowercaseTokensWithMinimumLength:()FCAdditions;
- (id)fc_numberFollowingString:()FCAdditions;
- (id)fc_stringByAppendingStringIfNeeded:()FCAdditions;
- (id)fc_stringByMultiplyingStringByCount:()FCAdditions;
- (id)fc_stringByPrefixingLinesWithString:()FCAdditions;
- (id)fc_stringByRemovingPunctuation;
- (id)fc_stringByReplacingOccurrencesOfStrings:()FCAdditions withString:;
- (id)fc_stringByReplacingPrefix:()FCAdditions withString:;
- (id)fc_stringByTrimmingWhiteSpace;
- (id)stringByRemovingCharactersInSet:()FCAdditions;
- (id)tokenizedLowerCaseStringWithMinimumLength:()FCAdditions;
- (uint64_t)fc_isValidCloudKitIDWithPrefix:()FCAdditions;
- (uint64_t)fc_unsignedLongLongValue;
@end

@implementation NSString(FCAdditions)

- (BOOL)fc_isValidColorHexString
{
  if (qword_1EDB27A48 != -1)
  {
    dispatch_once(&qword_1EDB27A48, &__block_literal_global_188);
  }

  return [_MergedGlobals_215 numberOfMatchesInString:self options:0 range:{0, objc_msgSend(self, "length")}] == 1;
}

+ (id)fc_string:()FCAdditions
{
  v3 = a3;
  v4 = objc_opt_new();
  v3[2](v3, v4);

  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (id)stringWithValue:()FCAdditions
{
  v3 = a3;
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
    stringValue = v4;
  }

  else
  {
    objc_opt_class();
    if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v3;
      stringValue = [v6 stringValue];
    }

    else
    {
      v6 = 0;
      stringValue = 0;
    }

    v4 = 0;
  }

  return stringValue;
}

- (id)fc_lowercaseTokensWithMinimumLength:()FCAdditions
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = [self length];
  lowercaseString = [self lowercaseString];
  if (v6 > a3)
  {
    v24 = v5;
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v20 = lowercaseString;
    [lowercaseString componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v28 = 0u;
    v23 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (!v23)
    {
      goto LABEL_19;
    }

    v22 = *v26;
    v8 = MEMORY[0x1E69E9830];
    while (1)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 length];
        string = [MEMORY[0x1E696AD60] string];
        if (v11)
        {
          v13 = 0;
          for (j = 0; v11 != j; ++j)
          {
            v15 = [v10 characterAtIndex:j];
            if (v15 > 0x7F)
            {
              if (!__maskrune(v15, 0x4000uLL))
              {
LABEL_13:
                [string appendFormat:@"%C", objc_msgSend(v10, "characterAtIndex:", j)];
                if (v13 >= a3 - 1)
                {
                  v16 = [string copy];
                  [v24 addObject:v16];
                }

                ++v13;
              }
            }

            else if ((*(v8 + 4 * v15 + 60) & 0x4000) == 0)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v23)
      {
LABEL_19:

        v5 = v24;
        goto LABEL_21;
      }
    }
  }

  [v5 addObject:lowercaseString];

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)tokenizedLowerCaseStringWithMinimumLength:()FCAdditions
{
  selfCopy = self;
  if (self)
  {
    if ([self length] <= a3)
    {
      selfCopy = [selfCopy copy];
    }

    else
    {
      v5 = [selfCopy fc_lowercaseTokensWithMinimumLength:a3];
      array = [v5 array];
      selfCopy = [array componentsJoinedByString:@" "];
    }
  }

  return selfCopy;
}

- (id)fc_stringByTrimmingWhiteSpace
{
  if ([self length])
  {
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v3 = [self stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  }

  else
  {
    v3 = [self copy];
  }

  return v3;
}

- (id)fc_stringByRemovingPunctuation
{
  punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v3 = [self stringByRemovingCharactersInSet:punctuationCharacterSet];

  return v3;
}

- (id)stringByRemovingCharactersInSet:()FCAdditions
{
  v4 = a3;
  v5 = [self length];
  if (v4 && v5)
  {
    v6 = [self componentsSeparatedByCharactersInSet:v4];
    v7 = [v6 componentsJoinedByString:&stru_1F2DC7DC0];
  }

  else
  {
    v7 = [self copy];
  }

  return v7;
}

- (id)fc_stringByReplacingPrefix:()FCAdditions withString:
{
  v6 = a4;
  v7 = a3;
  v8 = [self stringByReplacingOccurrencesOfString:v7 withString:v6 options:0 range:{0, objc_msgSend(v7, "length")}];

  return v8;
}

- (id)fc_stringByMultiplyingStringByCount:()FCAdditions
{
  for (i = objc_opt_new(); a3; --a3)
  {
    [i appendString:self];
  }

  return i;
}

- (id)fc_stringByReplacingOccurrencesOfStrings:()FCAdditions withString:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [self mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 replaceOccurrencesOfString:*(*(&v16 + 1) + 8 * i) withString:v7 options:0 range:{0, objc_msgSend(v8, "length", v16)}];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fc_stringByPrefixingLinesWithString:()FCAdditions
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"\n%@", v5];
  v7 = [self stringByReplacingOccurrencesOfString:@"\n" withString:v6];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v5, v7];

  return v8;
}

- (id)fc_stringByAppendingStringIfNeeded:()FCAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "string"];
    *buf = 136315906;
    v14 = "[NSString(FCAdditions) fc_stringByAppendingStringIfNeeded:]";
    v15 = 2080;
    v16 = "NSString+FCAdditions.m";
    v17 = 1024;
    v18 = 199;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [self length];
  if (v5 >= [v4 length] && (objc_msgSend(self, "substringFromIndex:", objc_msgSend(self, "length") - objc_msgSend(v4, "length")), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v4), v6, v7))
  {
    v8 = [self copy];
  }

  else
  {
    v8 = [self stringByAppendingString:v4];
  }

  v9 = v8;

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (uint64_t)fc_string:()FCAdditions isEqualToString:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (id)fc_numberFollowingString:()FCAdditions
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(\\d*)", a3];
  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v4 options:1 error:0];
  v6 = [v5 firstMatchInString:self options:0 range:{0, objc_msgSend(self, "length")}];
  if ([v6 numberOfRanges])
  {
    v7 = [v6 rangeAtIndex:1];
    v9 = [self substringWithRange:{v7, v8}];
    v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v10 setNumberStyle:1];
    v11 = [v10 numberFromString:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)fc_isValidCloudKitIDWithPrefix:()FCAdditions
{
  v4 = a3;
  if ([self fc_isValidCloudKitID])
  {
    v5 = [self hasPrefix:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)fc_hardPaywallArticleIDWithArticleID:()FCAdditions
{
  v3 = [a3 substringFromIndex:1];
  nf_stringByReversingString = [v3 nf_stringByReversingString];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"P%@", nf_stringByReversingString];

  return v5;
}

- (uint64_t)fc_unsignedLongLongValue
{
  v2 = objc_opt_new();
  v3 = [v2 numberFromString:self];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

@end