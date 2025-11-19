@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __73__NSMutableAttributedString_CKUtilities____ck_removeAllAttributesExcept___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (([*(a1 + 32) containsObject:v12] & 1) == 0)
        {
          [*(a1 + 40) removeAttribute:v12 range:{a3, a4}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

void __64__NSMutableAttributedString_CKUtilities____ck_filterAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__NSMutableAttributedString_CKUtilities____ck_filterAttributes___block_invoke_2;
  v9[3] = &unk_1E72EEF70;
  v8 = *(a1 + 40);
  v11 = a3;
  v12 = a4;
  v9[4] = *(a1 + 32);
  v10 = v8;
  [a2 enumerateKeysAndObjectsUsingBlock:v9];
}

void __64__NSMutableAttributedString_CKUtilities____ck_filterAttributes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    [*(a1 + 32) removeAttribute:v3 range:{*(a1 + 48), *(a1 + 56)}];
  }
}

void __82__NSMutableAttributedString_TextEffects__ck_toggleTextEffectNamed_range_getAdded___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (v9)
  {
    v12 = v9;
    v11 = [v9 unsignedIntegerValue] != a1[5] || a1[6] != a3 || a1[7] != a4;
    v9 = v12;
  }

  else
  {
    v11 = 1;
  }

  *(*(a1[4] + 8) + 24) = v11;
  *a5 = 1;
}

uint64_t __80__NSMutableAttributedString_TextEffects__ck_removeAnimatedTextEffectsFromRange___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) removeAttribute:*MEMORY[0x1E69A7CF8] range:{a3, a4}];
  }

  return result;
}

uint64_t __80__NSMutableAttributedString_TextEffects__ck_removeAnimatedTextEffectsFromRange___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) removeAttribute:*MEMORY[0x1E69DB6D8] range:{a3, a4}];
  }

  return result;
}

void __105__NSMutableAttributedString_TextEffects___ck_intersectingTextAnimationOnRange_getExistingAnimationRange___block_invoke(NSRange *a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v11 = a2;
  v13.location = a3;
  v13.length = a4;
  if (NSIntersectionRange(v13, a1[48]).length)
  {
    v10 = *(a1[2].location + 8);
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    objc_storeStrong((*(a1[2].length + 8) + 40), a2);
    *a5 = 1;
  }
}

void __71__NSMutableAttributedString_TextEffects__ck_applyTextEffectType_range___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    [*(a1 + 32) removeAttribute:*MEMORY[0x1E69A70F8] range:{a3, a4}];
    v7 = *MEMORY[0x1E69DB650];
    [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB650] range:{a3, a4}];
    v11 = +[CKUIBehavior sharedBehaviors];
    v8 = *(a1 + 32);
    v9 = [v11 theme];
    v10 = [v9 entryFieldTextColor];
    [v8 addAttribute:v7 value:v10 range:{a3, a4}];
  }
}

void __71__NSMutableAttributedString_TextEffects__ck_applyTextEffectType_range___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = [MEMORY[0x1E696B098] valueWithRange:{v7, a3 - v7}];
    [*(a1 + 32) addObject:v8];
    *(*(*(a1 + 40) + 8) + 24) = a3 + a4;
  }
}

void __72__NSMutableAttributedString_TextEffects__ck_addTextStyle_options_range___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  if (v7)
  {
    v9.location = a3;
    v9.length = a4;
    if (NSIntersectionRange(v9, *(a1 + 40)).length)
    {
      [*(a1 + 32) removeAttribute:*MEMORY[0x1E69A7CF8] range:{a3, a4}];
    }
  }
}

void __72__NSMutableAttributedString_TextEffects__ck_addTextStyle_options_range___block_invoke_2(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  if (v7)
  {
    v9.location = a3;
    v9.length = a4;
    if (NSIntersectionRange(v9, *(a1 + 40)).length)
    {
      [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB6D8] range:{a3, a4}];
    }
  }
}

void __72__NSMutableAttributedString_TextEffects__ck_addTextStyle_options_range___block_invoke_229(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 ck_fontByAddingSymbolicTrait:2];
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x1E69DB648];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x1E69DB648];
    v3 = [MEMORY[0x1E69DB878] ck_boldBalloonFont];
    v4 = v6;
    v5 = v7;
  }

  v8 = v3;
  [v4 addAttribute:v5 value:? range:?];
}

void __72__NSMutableAttributedString_TextEffects__ck_addTextStyle_options_range___block_invoke_2_232(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 ck_fontByAddingSymbolicTrait:1];
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x1E69DB648];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x1E69DB648];
    v3 = [MEMORY[0x1E69DB878] ck_italicBalloonFont];
    v4 = v6;
    v5 = v7;
  }

  v8 = v3;
  [v4 addAttribute:v5 value:? range:?];
}

void __62__NSMutableAttributedString_Helper__ck_removeAttributesNotIn___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([v7 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (([*(a1 + 32) containsObject:{v13, v14}] & 1) == 0)
          {
            [*(a1 + 40) removeAttribute:v13 range:{a3, a4}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

@end