@interface NSMutableDictionary(TextEffects)
- (id)__ck_fontUsedWhenTogglingTypingAttributesUsingBaseFont:()TextEffects;
- (uint64_t)_ck_removeTextEffect;
- (uint64_t)ck_removeBoldItalicUnderlineAndStrikethroughTypingAttributes;
- (uint64_t)ck_removeTextAnimationsTypingAttributes;
- (uint64_t)ck_toggleTextEffect:()TextEffects;
- (void)_ck_addTextEffect:()TextEffects;
- (void)_ck_toggleTextStyleBoldUsingBaseFont:()TextEffects;
- (void)_ck_toggleTextStyleItalicUsingBaseFont:()TextEffects;
- (void)_ck_toggleTextStyleStrikethrough;
- (void)_ck_toggleTextStyleUnderline;
- (void)ck_addTypingAttributeFontTrait:()TextEffects;
- (void)ck_removeTypingAttributeFontTrait:()TextEffects;
- (void)ck_toggleTextStyles:()TextEffects baseFont:;
@end

@implementation NSMutableDictionary(TextEffects)

- (void)ck_addTypingAttributeFontTrait:()TextEffects
{
  v5 = *MEMORY[0x1E69DB648];
  v6 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v6)
  {
    v8 = v6;
    v7 = [v6 ck_fontByAddingSymbolicTrait:a3];
    [a1 setObject:v7 forKeyedSubscript:v5];

    v6 = v8;
  }
}

- (void)ck_removeTypingAttributeFontTrait:()TextEffects
{
  v5 = *MEMORY[0x1E69DB648];
  v6 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v6)
  {
    v8 = v6;
    v7 = [v6 ck_fontByRemovingSymbolicTrait:a3];
    [a1 setObject:v7 forKeyedSubscript:v5];

    v6 = v8;
  }
}

- (uint64_t)ck_removeBoldItalicUnderlineAndStrikethroughTypingAttributes
{
  [a1 ck_removeTypingAttributeFontTrait:2];
  [a1 ck_removeTypingAttributeFontTrait:1];
  [a1 removeObjectForKey:*MEMORY[0x1E69DB758]];
  [a1 removeObjectForKey:*MEMORY[0x1E69DB6B8]];
  [a1 removeObjectForKey:*MEMORY[0x1E69A7CF0]];
  [a1 removeObjectForKey:*MEMORY[0x1E69A7D00]];
  [a1 removeObjectForKey:*MEMORY[0x1E69A7D18]];
  v2 = *MEMORY[0x1E69A7D08];

  return [a1 removeObjectForKey:v2];
}

- (uint64_t)ck_removeTextAnimationsTypingAttributes
{
  [a1 removeObjectForKey:*MEMORY[0x1E69DB6D8]];
  v2 = *MEMORY[0x1E69A7CF8];

  return [a1 removeObjectForKey:v2];
}

- (void)ck_toggleTextStyles:()TextEffects baseFont:
{
  v6 = a4;
  if ((a3 & 4) != 0)
  {
    [a1 _ck_toggleTextStyleUnderline];
    if ((a3 & 8) == 0)
    {
LABEL_3:
      if ((a3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_3;
  }

  [a1 _ck_toggleTextStyleStrikethrough];
  if ((a3 & 1) == 0)
  {
LABEL_4:
    if ((a3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [a1 _ck_toggleTextStyleBoldUsingBaseFont:v6];
  if ((a3 & 2) != 0)
  {
LABEL_5:
    [a1 _ck_toggleTextStyleItalicUsingBaseFont:v6];
  }

LABEL_6:
}

- (void)_ck_toggleTextStyleUnderline
{
  v2 = *MEMORY[0x1E69A7D18];
  v3 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69A7D18]];
  if (v3)
  {
    [a1 removeObjectForKey:v2];
    [a1 removeObjectForKey:*MEMORY[0x1E69DB758]];
  }

  else
  {
    [a1 setObject:&unk_1F04E7B90 forKeyedSubscript:v2];
    [a1 setObject:&unk_1F04E7BA8 forKeyedSubscript:*MEMORY[0x1E69DB758]];
  }
}

- (void)_ck_toggleTextStyleStrikethrough
{
  v2 = *MEMORY[0x1E69A7D08];
  v3 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69A7D08]];
  if (v3)
  {
    [a1 removeObjectForKey:v2];
    [a1 removeObjectForKey:*MEMORY[0x1E69DB6B8]];
  }

  else
  {
    [a1 setObject:&unk_1F04E7B90 forKeyedSubscript:v2];
    [a1 setObject:&unk_1F04E7BA8 forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  }
}

- (id)__ck_fontUsedWhenTogglingTypingAttributesUsingBaseFont:()TextEffects
{
  v4 = a3;
  v5 = [a1 ___ck_typingAttributesFont];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (void)_ck_toggleTextStyleBoldUsingBaseFont:()TextEffects
{
  v4 = *MEMORY[0x1E69A7CF0];
  v5 = a3;
  v8 = [a1 objectForKeyedSubscript:v4];
  v6 = [a1 __ck_fontUsedWhenTogglingTypingAttributesUsingBaseFont:v5];

  if (v8)
  {
    [a1 removeObjectForKey:v4];
  }

  else
  {
    [a1 setObject:&unk_1F04E7B90 forKeyedSubscript:v4];
  }

  v7 = [v6 ck_fontBySettingBoldEnabled:v8 == 0];
  [a1 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];
}

- (void)_ck_toggleTextStyleItalicUsingBaseFont:()TextEffects
{
  v4 = *MEMORY[0x1E69A7D00];
  v5 = a3;
  v8 = [a1 objectForKeyedSubscript:v4];
  v6 = [a1 __ck_fontUsedWhenTogglingTypingAttributesUsingBaseFont:v5];

  if (v8)
  {
    [a1 removeObjectForKey:v4];
  }

  else
  {
    [a1 setObject:&unk_1F04E7B90 forKeyedSubscript:v4];
  }

  v7 = [v6 ck_fontBySettingItalicEnabled:v8 == 0];
  [a1 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];
}

- (uint64_t)ck_toggleTextEffect:()TextEffects
{
  if ([a1 ck_activeTextEffectFromTypingAttributes] == a3)
  {

    return [a1 _ck_removeTextEffect];
  }

  else
  {

    return [a1 _ck_addTextEffect:a3];
  }
}

- (void)_ck_addTextEffect:()TextEffects
{
  if (a3)
  {
    v5 = IMTextEffectNameFromType();
    if (v5)
    {
      v8 = v5;
      v6 = [MEMORY[0x1E69DD7C0] animationWithName:v5];
      if (v6)
      {
        [a1 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB6D8]];
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
        [a1 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69A7CF8]];
      }

      v5 = v8;
    }
  }
}

- (uint64_t)_ck_removeTextEffect
{
  [a1 setObject:0 forKeyedSubscript:*MEMORY[0x1E69DB6D8]];
  v2 = *MEMORY[0x1E69A7CF8];

  return [a1 setObject:0 forKeyedSubscript:v2];
}

@end