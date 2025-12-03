@interface NSMutableAttributedString(TextEffects)
- (id)_ck_intersectingTextAnimationOnRange:()TextEffects getExistingAnimationRange:;
- (uint64_t)ck_applyTextStyle:()TextEffects options:range:;
- (uint64_t)ck_canApplyTextEffectInRange:()TextEffects;
- (uint64_t)ck_removeAnimatedTextEffectsFromRange:()TextEffects;
- (void)ck_addTextStyle:()TextEffects options:range:;
- (void)ck_applyTextEffectType:()TextEffects range:;
- (void)ck_convertAttributesUsingConversionHandler:()TextEffects range:;
- (void)ck_toggleTextEffectNamed:()TextEffects range:getAdded:;
- (void)ck_toggleTextEffectType:()TextEffects range:getAdded:;
@end

@implementation NSMutableAttributedString(TextEffects)

- (void)ck_toggleTextEffectType:()TextEffects range:getAdded:
{
  v10 = IMTextEffectNameFromType();
  [self ck_toggleTextEffectNamed:v10 range:a4 getAdded:{a5, a6}];
}

- (void)ck_toggleTextEffectNamed:()TextEffects range:getAdded:
{
  v10 = a3;
  v11 = IMTextEffectTypeFromName();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = *MEMORY[0x1E69A7CF8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__NSMutableAttributedString_TextEffects__ck_toggleTextEffectNamed_range_getAdded___block_invoke;
  v15[3] = &unk_1E72EF868;
  v15[4] = &v16;
  v15[5] = v11;
  v15[6] = a4;
  v15[7] = a5;
  [self enumerateAttribute:v12 inRange:a4 options:a5 usingBlock:{0, v15}];
  v13 = *(v17 + 24);
  if (a6)
  {
    *a6 = v13;
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  [self ck_applyTextEffectType:v14 range:{a4, a5}];
  _Block_object_dispose(&v16, 8);
}

- (uint64_t)ck_canApplyTextEffectInRange:()TextEffects
{
  result = [self length];
  if (result)
  {
    return a3 < [self length] && a3 + a4 <= objc_msgSend(self, "length");
  }

  return result;
}

- (uint64_t)ck_removeAnimatedTextEffectsFromRange:()TextEffects
{
  result = [self ck_canApplyTextEffectInRange:?];
  if (result)
  {
    v8 = *MEMORY[0x1E69A7CF8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__NSMutableAttributedString_TextEffects__ck_removeAnimatedTextEffectsFromRange___block_invoke;
    v11[3] = &unk_1E72EF890;
    v11[4] = self;
    [self enumerateAttribute:v8 inRange:a3 options:a4 usingBlock:{0, v11}];
    v9 = *MEMORY[0x1E69DB6D8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__NSMutableAttributedString_TextEffects__ck_removeAnimatedTextEffectsFromRange___block_invoke_2;
    v10[3] = &unk_1E72EF890;
    v10[4] = self;
    return [self enumerateAttribute:v9 inRange:a3 options:a4 usingBlock:{0, v10}];
  }

  return result;
}

- (id)_ck_intersectingTextAnimationOnRange:()TextEffects getExistingAnimationRange:
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = &unk_190F92BB2;
  v23 = xmmword_190DCEFA0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = 0;
  v9 = [self length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105__NSMutableAttributedString_TextEffects___ck_intersectingTextAnimationOnRange_getExistingAnimationRange___block_invoke;
  v12[3] = &unk_1E72EF8B8;
  v12[6] = a3;
  v12[7] = a4;
  v12[4] = &v19;
  v12[5] = &v13;
  [self ck_enumerateTextAnimationsIn:0 options:v9 using:{0, v12}];
  if (a5)
  {
    *a5 = *(v20 + 2);
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (void)ck_applyTextEffectType:()TextEffects range:
{
  v53 = *MEMORY[0x1E69E9840];
  if ([self ck_canApplyTextEffectInRange:{a4, a5}])
  {
    v51 = xmmword_190DCEFA0;
    v33 = [self _ck_intersectingTextAnimationOnRange:0 getExistingAnimationRange:{objc_msgSend(self, "length"), &v51}];
    v35 = *MEMORY[0x1E69A7CF8];
    [self removeAttribute:? range:?];
    v36 = *MEMORY[0x1E69DB6D8];
    [self removeAttribute:? range:?];
    [self ck_removeTextStyles:*MEMORY[0x1E69A7D10] options:3 range:{a4, a5}];
    if (a3)
    {
      v8 = *MEMORY[0x1E69A70F8];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __71__NSMutableAttributedString_TextEffects__ck_applyTextEffectType_range___block_invoke;
      v50[3] = &unk_1E72EF890;
      v50[4] = self;
      [self enumerateAttribute:v8 inRange:a4 options:a5 usingBlock:{0, v50}];
      v30 = 0;
      v32 = 0x7FFFFFFFFFFFFFFFLL;
      if (v51 != 0x7FFFFFFFFFFFFFFFLL && a4 > v51)
      {
        v9 = *(&v51 + 1) + v51 - (a4 + a5);
        if (*(&v51 + 1) + v51 < a4 + a5)
        {
          v9 = 0;
        }

        v10 = 0x7FFFFFFFFFFFFFFFLL;
        if (a4 + a5 < *(&v51 + 1) + v51)
        {
          v10 = a4 + a5;
        }

        v30 = v9;
        v32 = v10;
      }

      v38 = IMTextEffectNameFromType();
      array = [MEMORY[0x1E695DF70] array];
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = a4;
      v12 = *MEMORY[0x1E69DB5F8];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __71__NSMutableAttributedString_TextEffects__ck_applyTextEffectType_range___block_invoke_2;
      v43[3] = &unk_1E72EF8E0;
      v45 = &v46;
      v13 = array;
      v44 = v13;
      [self enumerateAttribute:v12 inRange:a4 options:a5 usingBlock:{0, v43}];
      if (a4 + a5 > v47[3])
      {
        v14 = [MEMORY[0x1E696B098] valueWithRange:?];
        [v13 addObject:v14];
      }

      if (![v13 count])
      {
        v15 = [MEMORY[0x1E696B098] valueWithRange:{a4, a5}];
        [v13 addObject:v15];
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v13;
      v16 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v16)
      {
        v17 = *v40;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(obj);
            }

            rangeValue = [*(*(&v39 + 1) + 8 * i) rangeValue];
            v21 = v20;
            v22 = [MEMORY[0x1E69DD7C0] animationWithName:v38];
            if (v22)
            {
              [self addAttribute:v36 value:v22 range:{rangeValue, v21}];
              v23 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
              [self addAttribute:v35 value:v23 range:{rangeValue, v21}];
            }
          }

          v16 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
        }

        while (v16);
      }

      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = MEMORY[0x1E69DD7C0];
        name = [v33 name];
        v26 = [v24 animationWithName:name];

        if (v26)
        {
          [self removeAttribute:v35 range:{v32, v31}];
          [self removeAttribute:v36 range:{v32, v31}];
          [self addAttribute:v36 value:v26 range:{v32, v31}];
          name2 = [v33 name];
          v28 = IMTextEffectTypeFromName();

          v29 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
          [self addAttribute:v35 value:v29 range:{v32, v31}];
        }
      }

      _Block_object_dispose(&v46, 8);
    }
  }
}

- (uint64_t)ck_applyTextStyle:()TextEffects options:range:
{
  result = [self ck_actionForIMTextStyle:a3 range:{a5, a6}];
  if (result == 1)
  {

    return [self ck_removeTextStyle:a3 options:a4 range:{a5, a6}];
  }

  else if (!result)
  {

    return [self ck_addTextStyle:a3 options:a4 range:{a5, a6}];
  }

  return result;
}

- (void)ck_addTextStyle:()TextEffects options:range:
{
  if (a4)
  {
    v11 = *MEMORY[0x1E69A7CF8];
    v12 = [self length];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __72__NSMutableAttributedString_TextEffects__ck_addTextStyle_options_range___block_invoke;
    v31[3] = &unk_1E72EF908;
    v31[5] = a5;
    v31[6] = a6;
    v31[4] = self;
    [self enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{0, v31}];
  }

  if ((a4 & 2) != 0)
  {
    v13 = *MEMORY[0x1E69DB6D8];
    v14 = [self length];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __72__NSMutableAttributedString_TextEffects__ck_addTextStyle_options_range___block_invoke_2;
    v30[3] = &unk_1E72EF908;
    v30[5] = a5;
    v30[6] = a6;
    v30[4] = self;
    [self enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v30}];
  }

  if (a3 > 3)
  {
    if (a3 == 8)
    {
      if (a4)
      {
        [self addAttribute:*MEMORY[0x1E69A7D08] value:&unk_1F04E7A58 range:{a5, a6}];
      }

      if ((a4 & 2) == 0)
      {
        return;
      }

      v19 = MEMORY[0x1E69DB6B8];
    }

    else
    {
      if (a3 != 4)
      {
        return;
      }

      if (a4)
      {
        [self addAttribute:*MEMORY[0x1E69A7D18] value:&unk_1F04E7A58 range:{a5, a6}];
      }

      if ((a4 & 2) == 0)
      {
        return;
      }

      v19 = MEMORY[0x1E69DB758];
    }

    [self addAttribute:*v19 value:&unk_1F04E7A70 range:{a5, a6}];
    return;
  }

  if (a3 == 1)
  {
    if (a4)
    {
      [self addAttribute:*MEMORY[0x1E69A7CF0] value:&unk_1F04E7A58 range:{a5, a6}];
    }

    if ((a4 & 2) != 0)
    {
      v15 = [self copy];
      v16 = v15;
      v17 = *MEMORY[0x1E69DB648];
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __72__NSMutableAttributedString_TextEffects__ck_addTextStyle_options_range___block_invoke_229;
      v28 = &unk_1E72EF930;
      selfCopy = self;
      v18 = &v25;
      goto LABEL_22;
    }
  }

  else if (a3 == 2)
  {
    if (a4)
    {
      [self addAttribute:*MEMORY[0x1E69A7D00] value:&unk_1F04E7A58 range:{a5, a6}];
    }

    if ((a4 & 2) != 0)
    {
      v15 = [self copy];
      v16 = v15;
      v17 = *MEMORY[0x1E69DB648];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __72__NSMutableAttributedString_TextEffects__ck_addTextStyle_options_range___block_invoke_2_232;
      v23 = &unk_1E72EF930;
      selfCopy2 = self;
      v18 = &v20;
LABEL_22:
      [v15 enumerateAttribute:v17 inRange:a5 options:a6 usingBlock:{0, v18, v20, v21, v22, v23, selfCopy2, v25, v26, v27, v28, selfCopy}];
    }
  }
}

- (void)ck_convertAttributesUsingConversionHandler:()TextEffects range:
{
  v8 = a3;
  v10 = [self attributesAtIndex:a4 effectiveRange:0];
  v9 = v8[2](v8, v10);

  [self setAttributes:v9 range:{a4, a5}];
}

@end