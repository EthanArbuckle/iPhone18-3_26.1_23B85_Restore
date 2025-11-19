@interface NSAttributedString(TextEffects)
- (BOOL)ck_actionForIMTextStyle:()TextEffects range:;
- (BOOL)ck_attributedStringHasTextEffectType:()TextEffects inRange:;
- (id)ck_attributedStringByApplyingTextEffectType:()TextEffects range:;
- (id)ck_attributedStringByApplyingTextStyle:()TextEffects range:;
- (id)ck_attributedStringByConverting:()TextEffects range:;
- (id)ck_attributedStringByTogglingTextEffectNamed:()TextEffects range:;
- (uint64_t)ck_activeTextStylesInRange:()TextEffects;
@end

@implementation NSAttributedString(TextEffects)

- (id)ck_attributedStringByApplyingTextEffectType:()TextEffects range:
{
  v8 = [a1 mutableCopy];
  [v8 ck_applyTextEffectType:a3 range:{a4, a5}];
  v9 = [v8 copy];

  return v9;
}

- (id)ck_attributedStringByApplyingTextStyle:()TextEffects range:
{
  v8 = [a1 mutableCopy];
  [v8 ck_addTextStyle:a3 options:3 range:{a4, a5}];
  v9 = [v8 copy];

  return v9;
}

- (BOOL)ck_attributedStringHasTextEffectType:()TextEffects inRange:
{
  if (a4 >= [a1 length])
  {
    [a1 length];
    return 0;
  }

  else
  {
    v9 = [a1 length];
    v10 = 0;
    if ([a1 length] && a4 + a5 <= v9)
    {
      v15 = 0;
      v16 = 0;
      v11 = [a1 attributesAtIndex:a4 longestEffectiveRange:&v15 inRange:{a4, a5}];
      v12 = [v11 objectForKey:*MEMORY[0x1E69A7CF8]];
      v13 = v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v12 unsignedIntegerValue] == a3;
      v10 = v16 >= a5 && v13;
    }
  }

  return v10;
}

- (id)ck_attributedStringByTogglingTextEffectNamed:()TextEffects range:
{
  v8 = a3;
  v9 = [a1 mutableCopy];
  [v9 ck_toggleTextEffectNamed:v8 range:a4 getAdded:{a5, 0}];

  v10 = [v9 copy];

  return v10;
}

- (id)ck_attributedStringByConverting:()TextEffects range:
{
  v8 = a3;
  v9 = [a1 mutableCopy];
  [v9 ck_convertAttributesUsingConversionHandler:v8 range:{a4, a5}];

  v10 = [v9 copy];

  return v10;
}

- (BOOL)ck_actionForIMTextStyle:()TextEffects range:
{
  v8 = IMTextStyleAttributeNameFromStyle();
  if (v8)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3010000000;
    v17 = &unk_190F92BB2;
    v18 = xmmword_190DCEFA0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__NSAttributedString_TextEffects__ck_actionForIMTextStyle_range___block_invoke;
    v13[3] = &unk_1E72EF840;
    v13[4] = &v14;
    [a1 enumerateAttribute:v8 inRange:a4 options:a5 usingBlock:{0, v13}];
    v19.location = a4;
    v19.length = a5;
    v9 = NSIntersectionRange(v15[2], v19);
    v11 = v9.location == a4 && v9.length == a5;
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)ck_activeTextStylesInRange:()TextEffects
{
  if (![a1 length])
  {
    return 0;
  }

  v5 = [a1 attributesAtIndex:a3 effectiveRange:0];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DB758]];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A7D18]];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 4;
    }
  }

  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DB6B8]];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 |= 8uLL;
    }
  }

  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A7D08]];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 |= 8uLL;
    }
  }

  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 fontDescriptor];
    v7 |= __rbit32([v13 symbolicTraits]) >> 30;
  }

  v14 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A7CF0]];

  if (v14)
  {
    objc_opt_class();
    v7 |= objc_opt_isKindOfClass() & 1;
  }

  v15 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A7D00]];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 |= 2uLL;
    }
  }

  return v7;
}

@end