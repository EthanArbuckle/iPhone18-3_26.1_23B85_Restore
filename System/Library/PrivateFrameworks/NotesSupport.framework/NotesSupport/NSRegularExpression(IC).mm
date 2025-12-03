@interface NSRegularExpression(IC)
+ (id)ic_patternForTokens:()IC matchWordBoundaries:;
+ (id)ic_regexForPrefixMatchingTokens:()IC substringMatchingTokens:;
+ (id)ic_regexForSearchStrings:()IC matchWordBoundaries:;
+ (id)ic_uuidRegex;
- (BOOL)ic_matchesString:()IC;
- (id)ic_attributedStringByReplacingMatchesInAttributedString:()IC options:range:withTemplate:;
@end

@implementation NSRegularExpression(IC)

+ (id)ic_regexForSearchStrings:()IC matchWordBoundaries:
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = [self ic_patternForTokens:v6 matchWordBoundaries:a4];
    v10 = 0;
    v8 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v7 options:1 error:&v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)ic_patternForTokens:()IC matchWordBoundaries:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v6, "appendString:", @"(");
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x1E696AE70] escapedPatternForString:*(*(&v18 + 1) + 8 * i)];
        v13 = v12;
        if (a4)
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\\b%@", v12];
        }

        else
        {
          v14 = v12;
        }

        v15 = v14;
        [v6 appendString:v14];
        [v6 appendString:@"|"];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if ([v6 length])
  {
    [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 1, 1, &stru_1F4FCDA88}];
  }

  [v6 appendString:@""]);
  v16 = [v6 copy];

  return v16;
}

+ (id)ic_regexForPrefixMatchingTokens:()IC substringMatchingTokens:
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [self ic_patternForTokens:v6 matchWordBoundaries:1];
    if (![v7 count])
    {
      v9 = 0;
LABEL_8:
      if (v8)
      {
        v12 = v8;
        v8 = v12;
LABEL_12:
        v15 = 0;
        v13 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v12 options:1 error:&v15];
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_5:
    v10 = [self ic_patternForTokens:v7 matchWordBoundaries:0];
    v9 = v10;
    if (v8 && v10)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) | (%@)", v8, v10];
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v8 = 0;
  v9 = 0;
  if ([v7 count])
  {
    goto LABEL_5;
  }

LABEL_10:
  v11 = v9;
  v9 = v11;
  v8 = 0;
LABEL_11:
  v12 = v11;
  if (v11)
  {
    goto LABEL_12;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)ic_matchesString:()IC
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [self rangeOfFirstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  v7 = v6;

  return v5 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0;
}

- (id)ic_attributedStringByReplacingMatchesInAttributedString:()IC options:range:withTemplate:
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  v14 = [v12 mutableCopy];
  string = [v12 string];
  v16 = [self matchesInString:string options:a4 range:{a5, a6}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = v16;
  obj = [v16 reverseObjectEnumerator];
  v17 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        string2 = [v12 string];
        v23 = [self replacementStringForResult:v21 inString:string2 offset:0 template:v13];

        range = [v21 range];
        [v14 replaceCharactersInRange:range withString:{v25, v23}];
      }

      v18 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v14];

  return v26;
}

+ (id)ic_uuidRegex
{
  v2 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" options:17 error:&v2];

  return v0;
}

@end