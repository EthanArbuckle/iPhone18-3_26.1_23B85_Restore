@interface CKUIThemeClarityUI
- (id)gray_balloonColors;
- (id)transcriptBackgroundColor;
- (id)transcriptTextColor;
@end

@implementation CKUIThemeClarityUI

- (id)transcriptBackgroundColor
{
  if (transcriptBackgroundColor_once_2428 != -1)
  {
    [CKUIThemeClarityUI transcriptBackgroundColor];
  }

  v3 = transcriptBackgroundColor_sBehavior_2427;

  return v3;
}

void __47__CKUIThemeClarityUI_transcriptBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] clearColor];
  v1 = transcriptBackgroundColor_sBehavior_2427;
  transcriptBackgroundColor_sBehavior_2427 = v0;
}

- (id)transcriptTextColor
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = transcriptTextColor_sBehavior;
  if (transcriptTextColor_sBehavior)
  {
    v4 = transcriptTextColor_sIsIncreaseContrastEnabled_transcriptTextColor == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = MEMORY[0x1E69DC888];
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.333333333 green:0.333333333 blue:0.345098039 alpha:1.0];
    systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
    v8 = [v5 dynamicColorWithLightColor:v6 darkColor:systemLightGrayColor];
    v9 = transcriptTextColor_sBehavior;
    transcriptTextColor_sBehavior = v8;

    transcriptTextColor_sIsIncreaseContrastEnabled_transcriptTextColor = v2;
    v3 = transcriptTextColor_sBehavior;
  }

  return v3;
}

- (id)gray_balloonColors
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CKUIThemeClarityUI_gray_balloonColors__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (gray_balloonColors_once_2432 != -1)
  {
    dispatch_once(&gray_balloonColors_once_2432, block);
  }

  return gray_balloonColors_sBehavior_2431;
}

void __40__CKUIThemeClarityUI_gray_balloonColors__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v17.receiver = *(a1 + 32);
  v17.super_class = CKUIThemeClarityUI;
  v3 = objc_msgSendSuper2(&v17, sel_gray_balloonColors);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = MEMORY[0x1E69DC888];
        v10 = [MEMORY[0x1E69DC888] systemWhiteColor];
        v11 = [v9 dynamicColorWithLightColor:v10 darkColor:v8];

        [v2 addObject:v11];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = gray_balloonColors_sBehavior_2431;
  gray_balloonColors_sBehavior_2431 = v2;
}

@end