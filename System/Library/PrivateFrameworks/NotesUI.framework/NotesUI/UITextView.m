@interface UITextView
@end

@implementation UITextView

uint64_t __70__UITextView_IC__ic_shouldEnableBlockQuoteForAttachmentsOnlySelection__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  if (v11 && ([MEMORY[0x1E69B7888] isInlineAttachment:v11] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v7 = [*(a1 + 32) textStorage];
    v8 = [v7 string];
    v9 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    *(*(*(a1 + 48) + 8) + 24) |= [v8 ic_range:a3 onlyContainsCharacterSet:{a4, v9}] ^ 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

void __34__UITextView_IC__ic_rectForRange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) ensureGlyphsForCharacterRange:{*(a1 + 64), *(a1 + 72)}];
  v2 = [*(a1 + 32) glyphRangeForCharacterRange:*(a1 + 64) actualCharacterRange:{*(a1 + 72), 0}];
  v4 = v3;
  v5 = *(a1 + 72) + *(a1 + 64);
  v6 = [*(a1 + 40) textStorage];
  [v6 ic_range];
  v8 = v7;

  if (v5 <= v8)
  {
    [*(a1 + 32) ensureLayoutForGlyphRange:{v2, v4}];
    [*(a1 + 32) boundingRectForGlyphRange:v2 inTextContainer:{v4, *(a1 + 48)}];
    v9 = *(*(a1 + 56) + 8);
    v9[4] = v10;
    v9[5] = v11;
    v9[6] = v12;
    v9[7] = v13;
  }
}

uint64_t __35__UITextView_IC__ic_imageForRange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) glyphRangeForCharacterRange:*(a1 + 40) actualCharacterRange:{*(a1 + 48), 0}];
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = -*(a1 + 56);
    v7 = -*(a1 + 64);
    [*(a1 + 32) drawBackgroundForGlyphRange:result atPoint:{v3, v6, v7}];
    v8 = *(a1 + 32);

    return [v8 drawGlyphsForGlyphRange:v4 atPoint:{v5, v6, v7}];
  }

  return result;
}

uint64_t __55__UITextView_IC__currentEmphasisColorsForStyleSelector__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v3 = [*(*(*(a1 + 32) + 8) + 40) containsObject:v3];
    if ((v3 & 1) == 0)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
      v3 = [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    }
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void __51__UITextView_IC__currentListStylesForStyleSelector__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 isList])
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v9, "style")}];
    LOBYTE(v3) = [v3 containsObject:v4];

    if ((v3 & 1) == 0)
    {
      v5 = *(*(*(a1 + 40) + 8) + 40);
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v9, "style")}];
      [v5 addObject:v6];

      v7 = *(*(*(a1 + 32) + 8) + 40);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v9, "style")}];
      [v7 addObject:v8];
    }
  }
}

@end