@interface UIFont(FUSausageFontSupport)
+ (id)_fu_sausageFontOfSize:()FUSausageFontSupport fontWeight:;
+ (id)_fu_sausageFontOfSize:()FUSausageFontSupport fontWeight:centeredColons:;
+ (id)fu_alternateColonsFeatureSetting;
+ (id)fu_bodyEmphasizeFont;
+ (id)fu_bodyShortFont;
+ (id)fu_fontByApplyingFeatureSettings:()FUSausageFontSupport toFont:;
+ (id)fu_mediumFontOfSize:()FUSausageFontSupport centeredColons:;
+ (id)fu_systemFontOfSize:()FUSausageFontSupport centeredColons:;
- (id)fu_fontWithCenteredColons;
- (id)fu_fontWithSize:()FUSausageFontSupport;
- (id)fu_fontWithSizeFittingString:()FUSausageFontSupport withinWidth:accountForGlyphOffset:;
- (id)fu_fontWithStraightSidedNumbers;
- (id)fu_monospacedFont;
- (id)fu_shortSlashFont;
- (id)fu_smallCapsFont;
@end

@implementation UIFont(FUSausageFontSupport)

- (id)fu_fontWithCenteredColons
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DB878] fu_alternateColonsFeatureSetting];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = [MEMORY[0x1E69DB878] fu_fontByApplyingFeatureSettings:v3 toFont:a1];

  return v4;
}

+ (id)fu_alternateColonsFeatureSetting
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DB900];
  v3[0] = *MEMORY[0x1E69DB908];
  v3[1] = v0;
  v4[0] = &unk_1F5F9B6A0;
  v4[1] = &unk_1F5F9B6D0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];

  return v1;
}

- (id)fu_fontWithSize:()FUSausageFontSupport
{
  v3 = [a1 fontDescriptor];
  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:a2];

  return v4;
}

- (id)fu_fontWithStraightSidedNumbers
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DB900];
  v7[0] = *MEMORY[0x1E69DB908];
  v7[1] = v2;
  v8[0] = &unk_1F5F9B6A0;
  v8[1] = &unk_1F5F9B6B8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v5 = [MEMORY[0x1E69DB878] fu_fontByApplyingFeatureSettings:v4 toFont:a1];

  return v5;
}

- (id)fu_monospacedFont
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E69DB900];
  v8[0] = *MEMORY[0x1E69DB908];
  v8[1] = v3;
  v9[0] = &unk_1F5F9B6D0;
  v9[1] = &unk_1F5F9B6E8;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [v2 fu_fontByApplyingFeatureSettings:v5 toFont:a1];

  return v6;
}

- (id)fu_smallCapsFont
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E69DB900];
  v8[0] = *MEMORY[0x1E69DB908];
  v8[1] = v3;
  v9[0] = &unk_1F5F9B700;
  v9[1] = &unk_1F5F9B718;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [v2 fu_fontByApplyingFeatureSettings:v5 toFont:a1];

  return v6;
}

- (id)fu_shortSlashFont
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E69DB900];
  v8[0] = *MEMORY[0x1E69DB908];
  v8[1] = v3;
  v9[0] = &unk_1F5F9B730;
  v9[1] = &unk_1F5F9B6E8;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [v2 fu_fontByApplyingFeatureSettings:v5 toFont:a1];

  return v6;
}

+ (id)_fu_sausageFontOfSize:()FUSausageFontSupport fontWeight:
{
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:*MEMORY[0x1E69658A8] weight:? design:?];
  if (!v2)
  {
    NSLog(&cfstr_UnableToLoadRo.isa);
    v2 = [MEMORY[0x1E69DB878] systemFontOfSize:a1];
  }

  return v2;
}

+ (id)_fu_sausageFontOfSize:()FUSausageFontSupport fontWeight:centeredColons:
{
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:*MEMORY[0x1E69658A8] weight:? design:?];
  if (v6)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  NSLog(&cfstr_UnableToLoadRo.isa);
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:a1];
  if (a4)
  {
LABEL_3:
    v7 = [v6 fu_fontWithCenteredColons];

    v6 = v7;
  }

LABEL_4:

  return v6;
}

+ (id)fu_fontByApplyingFeatureSettings:()FUSausageFontSupport toFont:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 fontDescriptor];
  v11 = *MEMORY[0x1E69DB8B0];
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 fontDescriptorByAddingAttributes:v7];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];

  return v9;
}

+ (id)fu_systemFontOfSize:()FUSausageFontSupport centeredColons:
{
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
  v5 = v4;
  if (a3)
  {
    v6 = [v4 fu_fontWithCenteredColons];

    v5 = v6;
  }

  return v5;
}

+ (id)fu_mediumFontOfSize:()FUSausageFontSupport centeredColons:
{
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:a1 weight:*MEMORY[0x1E69DB970]];
  v6 = v5;
  if (a4)
  {
    v7 = [v5 fu_fontWithCenteredColons];

    v6 = v7;
  }

  return v6;
}

+ (id)fu_bodyShortFont
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:1];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)fu_bodyEmphasizeFont
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:2 options:1];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

- (id)fu_fontWithSizeFittingString:()FUSausageFontSupport withinWidth:accountForGlyphOffset:
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a1;
  v10 = v9;
  if (a2 > 2.22044605e-16)
  {
    [v9 pointSize];
    v12 = v11 * 0.5;
    [v10 pointSize];
    if (v13 >= v12)
    {
      v16 = *MEMORY[0x1E69DB648];
      while (1)
      {
        v17 = 0.0;
        if (a5)
        {
          v17 = FIUILeftOffsetForFontAndString(v10, v8);
        }

        v23 = v16;
        v24[0] = v10;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        [v8 sizeWithAttributes:v18];
        v20 = v17 + v19;

        if (v20 <= a2)
        {
          break;
        }

        [v10 pointSize];
        v14 = [v10 fu_fontWithSize:v21 * 0.9];

        [v14 pointSize];
        v10 = v14;
        if (v22 < v12)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v14 = v10;
LABEL_4:

  return v14;
}

@end