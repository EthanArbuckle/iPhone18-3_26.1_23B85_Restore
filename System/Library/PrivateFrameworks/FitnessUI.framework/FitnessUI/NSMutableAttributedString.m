@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __79__NSMutableAttributedString_FIUISizing__scaleFontSizeByAmount_minimumFontSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  [v7 pointSize];
  *(*(*(a1 + 40) + 8) + 24) = v8 * *(a1 + 48);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 24);
  if (v10 < *(a1 + 56))
  {
    v10 = *(a1 + 56);
  }

  *(v9 + 24) = v10;
  v12 = [v7 fontWithSize:*(*(*(a1 + 40) + 8) + 24)];

  v11 = *MEMORY[0x1E69DB648];
  [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB648] range:{a3, a4}];
  [*(a1 + 32) addAttribute:v11 value:v12 range:{a3, a4}];
}

void __72__NSMutableAttributedString_FIUISizing__scaleNumericAttribute_byAmount___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    [a2 doubleValue];
  }

  else
  {
    v7 = 1.0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7 * *(a1 + 56);
  [*(a1 + 32) removeAttribute:*(a1 + 40) range:{a3, a4}];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(*(a1 + 48) + 8) + 24)];
  [v8 addAttribute:v9 value:v10 range:{a3, a4}];
}

@end