@interface NSAttributedString(IC)
+ (id)ic_emptyAttributedString;
- (id)ic_allRangesContainingAttribute:()IC;
- (id)ic_attributedStringByAppendingAttributedString:()IC;
- (id)ic_attributedStringByAppendingString:()IC;
- (id)ic_attributedStringByPrependingAttributedString:()IC;
- (id)ic_attributedStringByPrependingString:()IC;
- (id)ic_attributedStringByRemovingAllAttributesExcept:()IC;
- (id)ic_attributedStringByReplacingCharactersInSet:()IC withString:;
- (id)ic_attributedStringByReplacingNewlineCharactersWithWhiteSpace;
- (id)ic_attributedStringByTrimmingCharactersInSet:()IC;
- (id)ic_attributedSubstringFromRange:()IC;
- (id)ic_componentRangesSeparatedByPredicate:()IC inRange:;
- (uint64_t)ic_containsAttribute:()IC;
- (uint64_t)ic_containsAttribute:()IC inRange:;
- (uint64_t)ic_enclosingRangeContainingCharactersInSet:()IC forRange:;
- (uint64_t)ic_rangeByTrimmingCharactersInSet:()IC inRange:;
- (uint64_t)ic_whitespaceAndNewlineCoalescedAttributedString;
- (void)ic_enumerateAttributesInClampedRange:()IC options:usingBlock:;
- (void)ic_enumerateClampedAttribute:()IC inRange:options:usingBlock:;
- (void)ic_enumerateUnclampedAttribute:()IC inRange:options:usingBlock:;
@end

@implementation NSAttributedString(IC)

- (id)ic_attributedStringByAppendingString:()IC
{
  ic_attributedString = [a3 ic_attributedString];
  v5 = [self ic_attributedStringByAppendingAttributedString:ic_attributedString];

  return v5;
}

- (id)ic_attributedStringByAppendingAttributedString:()IC
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:self];
  [v5 appendAttributedString:v4];
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v5];

  return v6;
}

- (id)ic_attributedStringByPrependingString:()IC
{
  ic_attributedString = [a3 ic_attributedString];
  v5 = [self ic_attributedStringByPrependingAttributedString:ic_attributedString];

  return v5;
}

- (id)ic_attributedStringByPrependingAttributedString:()IC
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v4];
  [v5 appendAttributedString:self];
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v5];

  return v6;
}

- (id)ic_componentRangesSeparatedByPredicate:()IC inRange:
{
  v8 = a3;
  string = [self string];
  array = [MEMORY[0x1E695DF70] array];
  v11 = a4 + a5;
  if (a4 < a4 + a5)
  {
    v12 = 0;
    v13 = 0;
    v14 = a4;
    do
    {
      while ((v8[2](v8, v14, [string characterAtIndex:v14]) & 1) != 0)
      {
        if (v13)
        {
          v15 = [MEMORY[0x1E696B098] valueWithRange:{a4, v12}];
          [array addObject:v15];
        }

        v12 = 0;
        v13 = 0;
        a4 = v14 + 1;
        v14 = a4;
        if (a4 == v11)
        {
          goto LABEL_11;
        }
      }

      ++v13;
      ++v14;
      v12 = v13;
    }

    while (v14 != v11);
    if (v13)
    {
      v16 = [MEMORY[0x1E696B098] valueWithRange:{a4, v13}];
      [array addObject:v16];
    }
  }

LABEL_11:

  return array;
}

- (uint64_t)ic_rangeByTrimmingCharactersInSet:()IC inRange:
{
  v8 = a3;
  string = [self string];
  v10 = a4 + a5;
  v11 = a4;
  if (a4 < a4 + a5)
  {
    while (([v8 characterIsMember:{objc_msgSend(string, "characterAtIndex:", v11)}] & 1) != 0)
    {
      v12 = 0;
      if (++v11 < v10)
      {
        if (--a5)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    v12 = a5;
LABEL_7:
    v10 = v12 + v11;
    a5 = v12;
  }

  if (a5 && v10 > a4)
  {
    v13 = a5 - 1;
    while (([v8 characterIsMember:{objc_msgSend(string, "characterAtIndex:", v10 - 1)}] & 1) != 0)
    {
      v14 = v13 - 1;
      if (v13)
      {
        v10 = --a5 + v11;
        v15 = v11 + v13--;
        if (v15 > a4)
        {
          continue;
        }
      }

      a5 = v14 + 1;
      goto LABEL_15;
    }
  }

  else
  {
LABEL_15:
    if (!a5)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v11;
}

- (uint64_t)ic_enclosingRangeContainingCharactersInSet:()IC forRange:
{
  v8 = a3;
  string = [self string];
  v10 = a4 + a5;
  while (1)
  {
    v11 = a4;
    if (!a4)
    {
      break;
    }

    v12 = a5;
    --a4;
    if (v11 - 1 < [string length])
    {
      ++a5;
      if ([v8 characterIsMember:{objc_msgSend(string, "characterAtIndex:", v11 - 1)}])
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v12 = v10;
  do
  {
LABEL_7:
    if (v11 + v12 >= [string length])
    {
      break;
    }

    ++v12;
  }

  while (([v8 characterIsMember:{objc_msgSend(string, "characterAtIndex:")}] & 1) != 0);

  return v11;
}

- (id)ic_attributedSubstringFromRange:()IC
{
  string = [self string];
  v8 = [string rangeOfComposedCharacterSequencesForRange:{a3, a4}];
  v10 = [self attributedSubstringFromRange:{v8, v9}];

  return v10;
}

- (void)ic_enumerateAttributesInClampedRange:()IC options:usingBlock:
{
  v10 = a6;
  v19.location = [self ic_range];
  v19.length = v11;
  v18.location = a3;
  v18.length = a4;
  v12 = NSIntersectionRange(v18, v19);
  if (v12.length)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x4012000000;
    v16[3] = __Block_byref_object_copy__7;
    v16[4] = __Block_byref_object_dispose__7;
    v16[5] = &unk_1D45D60DB;
    v17 = v12;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__NSAttributedString_IC__ic_enumerateAttributesInClampedRange_options_usingBlock___block_invoke;
    v13[3] = &unk_1E8485558;
    v14 = v10;
    v15 = v16;
    [self enumerateAttributesInRange:v12.location options:v12.length usingBlock:{a5, v13}];

    _Block_object_dispose(v16, 8);
  }
}

- (void)ic_enumerateClampedAttribute:()IC inRange:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  v22.location = [self ic_range];
  v22.length = v14;
  v21.location = a4;
  v21.length = a5;
  v15 = NSIntersectionRange(v21, v22);
  if (v15.length)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x4012000000;
    v19[3] = __Block_byref_object_copy__7;
    v19[4] = __Block_byref_object_dispose__7;
    v19[5] = &unk_1D45D60DB;
    v20 = v15;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__NSAttributedString_IC__ic_enumerateClampedAttribute_inRange_options_usingBlock___block_invoke;
    v16[3] = &unk_1E8485580;
    v17 = v13;
    v18 = v19;
    [self enumerateAttribute:v12 inRange:v15.location options:v15.length usingBlock:{a6, v16}];

    _Block_object_dispose(v19, 8);
  }
}

- (void)ic_enumerateUnclampedAttribute:()IC inRange:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  v29.location = [self ic_range];
  v29.length = v14;
  v28.location = a4;
  v28.length = a5;
  v15 = NSIntersectionRange(v28, v29);
  length = v15.length;
  if (v15.length)
  {
    v27 = 0;
    v17 = [self length];
    v18 = v15.location + ((v15.length - 1) & (a6 << 62 >> 63));
    if ((a6 & 0x100000) != 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = [self attribute:v12 atIndex:v18 longestEffectiveRange:&v25 inRange:{0, v17}];
    {
      v20 = i;
      v13[2](v13, i, v25, v26, &v27);
      if (v27)
      {
        break;
      }

      if ((a6 & 2) != 0)
      {
        if (v25 <= v15.location)
        {
          break;
        }

        v18 = v25 - 1;
      }

      else
      {
        v21 = [self length];
        v22 = v21 - v17 + v25 + v26;
        v23 = length - v17 + v21;
        v24 = v21 == v17;
        if (v21 == v17)
        {
          v18 = v26 + v25;
        }

        else
        {
          v17 = v21;
          v18 = v22;
        }

        if (!v24)
        {
          length = v23;
        }

        if (v18 >= length + v15.location)
        {
          break;
        }
      }

      if ((a6 & 0x100000) == 0)
      {
        goto LABEL_3;
      }

LABEL_4:
      [self attribute:v12 atIndex:v18 effectiveRange:&v25];
    }
  }
}

- (id)ic_attributedStringByReplacingNewlineCharactersWithWhiteSpace
{
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [self ic_attributedStringByReplacingCharactersInSet:newlineCharacterSet withString:@" "];

  return v3;
}

- (id)ic_attributedStringByReplacingCharactersInSet:()IC withString:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  string = [selfCopy string];
  v10 = [string rangeOfCharacterFromSet:v6];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [selfCopy mutableCopy];
    string2 = [v11 string];
    v13 = [string2 rangeOfCharacterFromSet:v6];
    v15 = v14;

    while (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 replaceCharactersInRange:v13 withString:{v15, v7}];
      string3 = [v11 string];
      v17 = [string3 length];

      string4 = [v11 string];
      v13 = [string4 rangeOfCharacterFromSet:v6 options:2 range:{v13, v17 - v13}];
      v15 = v19;
    }

    if (v11)
    {
      v20 = [v11 copy];

      selfCopy = v20;
    }
  }

  return selfCopy;
}

- (uint64_t)ic_containsAttribute:()IC
{
  v4 = a3;
  ic_range = [self ic_range];
  v7 = [self ic_containsAttribute:v4 inRange:{ic_range, v6}];

  return v7;
}

- (uint64_t)ic_containsAttribute:()IC inRange:
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__NSAttributedString_IC__ic_containsAttribute_inRange___block_invoke;
  v7[3] = &unk_1E84855A8;
  v7[4] = &v8;
  [self enumerateAttribute:a3 inRange:a4 options:a5 usingBlock:{0x100000, v7}];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)ic_attributedStringByRemovingAllAttributesExcept:()IC
{
  v4 = a3;
  v5 = [self mutableCopy];
  ic_range = [self ic_range];
  v8 = v7;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __75__NSAttributedString_IC__ic_attributedStringByRemovingAllAttributesExcept___block_invoke;
  v17 = &unk_1E84855D0;
  v9 = v4;
  v19 = v9;
  v10 = v5;
  v18 = v10;
  [v10 enumerateAttributesInRange:ic_range options:v8 usingBlock:{0, &v14}];
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = [v11 initWithAttributedString:{v10, v14, v15, v16, v17}];

  return v12;
}

- (id)ic_attributedStringByTrimmingCharactersInSet:()IC
{
  v4 = a3;
  string = [self string];
    ;
  }

  if ([self length] == i)
  {
    v7 = objc_opt_new();
  }

  else
  {
    v8 = [self length];
    v9 = v8 - i;
    v10 = v8 - 1;
    do
    {
      v11 = v9;
      if (v10 <= i)
      {
        break;
      }

      v12 = [v4 characterIsMember:{objc_msgSend(string, "characterAtIndex:", v10)}];
      v9 = v11 - 1;
      --v10;
    }

    while ((v12 & 1) != 0);
    v7 = [self attributedSubstringFromRange:{i, v11}];
  }

  v13 = v7;

  return v13;
}

- (uint64_t)ic_whitespaceAndNewlineCoalescedAttributedString
{
  if ([NSAttributedString(IC) ic_whitespaceAndNewlineCoalescedAttributedString]::onceToken != -1)
  {
    [NSAttributedString(IC) ic_whitespaceAndNewlineCoalescedAttributedString];
  }

  v2 = [NSAttributedString(IC) ic_whitespaceAndNewlineCoalescedAttributedString]::regex;
  ic_range = [self ic_range];

  return [v2 ic_attributedStringByReplacingMatchesInAttributedString:self options:0 range:ic_range withTemplate:{v3, @" "}];
}

+ (id)ic_emptyAttributedString
{
  v0 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4FCDA88];

  return v0;
}

- (id)ic_allRangesContainingAttribute:()IC
{
  v4 = a3;
  v5 = objc_opt_new();
  ic_range = [self ic_range];
  v8 = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__NSAttributedString_IC__ic_allRangesContainingAttribute___block_invoke;
  v12[3] = &unk_1E84855F8;
  v9 = v5;
  v13 = v9;
  [self enumerateAttribute:v4 inRange:ic_range options:v8 usingBlock:{0, v12}];
  v10 = [v9 copy];

  return v10;
}

@end