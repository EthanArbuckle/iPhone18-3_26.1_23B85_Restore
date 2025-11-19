@interface UIFont(HKAdditions)
+ (double)hk_fittingScaleFactorForUILabels:()HKAdditions constrainingWidth:;
+ (id)_hk_compactFontOfStyle:()HKAdditions weight:rounded:;
+ (id)hk_chartActivityValueFont;
+ (id)hk_chartCurrentValueDateFont;
+ (id)hk_chartCurrentValueKindFont;
+ (id)hk_chartCurrentValueUnitFont;
+ (id)hk_chartCurrentValueValueFont;
+ (id)hk_chartLollipopValueFontSmaller;
+ (id)hk_chrValueCellPrimaryFont;
+ (id)hk_defaultFontWithUIFontTextStyle:()HKAdditions symbolicTraits:attributes:;
+ (id)hk_preferredFontForTextStyle:()HKAdditions symbolicTraits:;
+ (id)hk_preferredFontForTextStyle:()HKAdditions symbolicTraits:maximumContentSizeCategory:;
+ (id)hk_preferredFontIgnoringAccessibilitySizeForTextStyle:()HKAdditions symbolicTraits:;
+ (id)hk_preferredRoundedFontForTextStyle:()HKAdditions additionalSymbolicTraits:;
+ (id)hk_roundedSystemFontWithSize:()HKAdditions weight:textStyle:;
+ (id)hk_scalableFontForTextStyle:()HKAdditions symbolicTraits:;
+ (id)hk_staticPreferredFontForTextStyle:()HKAdditions symbolicTraits:;
+ (id)hk_titleLabelFontScaledBy:()HKAdditions;
+ (id)hk_unitLabelFontScaledBy:()HKAdditions;
- (id)_hk_fontByModifyingSymbolicTraits:()HKAdditions;
- (id)hk_fontByAddingSymbolicTraits:()HKAdditions;
- (id)hk_fontByRemovingSymbolicTraits:()HKAdditions;
- (id)hk_monospacedFont;
@end

@implementation UIFont(HKAdditions)

+ (id)hk_staticPreferredFontForTextStyle:()HKAdditions symbolicTraits:
{
  v4 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:a3 addingSymbolicTraits:a4 options:0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)hk_preferredFontForTextStyle:()HKAdditions symbolicTraits:
{
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:a4 options:0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)hk_preferredFontForTextStyle:()HKAdditions symbolicTraits:maximumContentSizeCategory:
{
  v6 = [a1 _preferredFontForTextStyle:a3 maximumContentSizeCategory:a5];
  v7 = [v6 hk_fontByAddingSymbolicTraits:a4];

  return v7;
}

+ (id)hk_preferredFontIgnoringAccessibilitySizeForTextStyle:()HKAdditions symbolicTraits:
{
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:a4 options:1];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (double)hk_fittingScaleFactorForUILabels:()HKAdditions constrainingWidth:
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a4;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  v6 = 1.0;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = *v32;
    v11 = *MEMORY[0x1E69DB648];
    v12 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v14 text];
        v37 = v11;
        v16 = [v14 font];
        v38 = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        [v15 boundingRectWithSize:0 options:v17 attributes:0 context:{3.40282347e38, 3.40282347e38}];
        v19 = v18;

        v20 = v19 - a1;
        if (v20 > 0.00000011920929 && v20 > v12)
        {
          v22 = [v14 text];

          v23 = [v14 font];

          v8 = v23;
          v9 = v22;
          v12 = v20;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v7);
    if (v9)
    {
      v6 = 0.9;
      do
      {
        [v8 pointSize];
        v25 = [v8 fontWithSize:v6 * v24];
        v35 = v11;
        v36 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v9 boundingRectWithSize:0 options:v26 attributes:0 context:{3.40282347e38, 3.40282347e38}];
        v28 = v27;

        if (v28 <= a1)
        {
          break;
        }

        v6 = v6 + -0.1;
      }

      while (v6 > 0.1);
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  return v6;
}

+ (id)hk_defaultFontWithUIFontTextStyle:()HKAdditions symbolicTraits:attributes:
{
  v7 = a5;
  v8 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:a3 addingSymbolicTraits:a4 options:0];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 fontDescriptorByAddingAttributes:v7];

    v9 = v10;
  }

  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];

  return v11;
}

+ (id)hk_titleLabelFontScaledBy:()HKAdditions
{
  v3 = [a1 hk_defaultFontWithUIFontTextStyle:*MEMORY[0x1E69DDD40] symbolicTraits:0x8000 attributes:0];
  v4 = v3;
  if (a2 != 1.0)
  {
    [v3 pointSize];
    v6 = [v4 fontWithSize:v5 * a2];

    v4 = v6;
  }

  return v4;
}

+ (id)hk_unitLabelFontScaledBy:()HKAdditions
{
  v3 = [a1 hk_defaultFontWithUIFontTextStyle:*MEMORY[0x1E69DDD40] symbolicTraits:0x8000 attributes:0];
  v4 = [v3 fontWithSize:a2 * 15.0];

  return v4;
}

+ (id)_hk_compactFontOfStyle:()HKAdditions weight:rounded:
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = MEMORY[0x1E69658A8];
  }

  else
  {
    v7 = MEMORY[0x1E69658A0];
  }

  v8 = MEMORY[0x1E69DB880];
  v9 = *v7;
  v10 = [v8 preferredFontDescriptorWithTextStyle:a4];
  v20 = *MEMORY[0x1E69DB8F0];
  v11 = *MEMORY[0x1E69DB990];
  v18[0] = *MEMORY[0x1E69DB940];
  v18[1] = v11;
  v19[0] = v9;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
  v19[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v15 = [v10 fontDescriptorByAddingAttributes:v14];

  v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:0.0];

  return v16;
}

+ (id)hk_roundedSystemFontWithSize:()HKAdditions weight:textStyle:
{
  v8 = a5;
  v9 = [a1 hk_roundedSystemFontWithSize:a2 weight:a3];
  v10 = [objc_alloc(MEMORY[0x1E69DCA40]) initForTextStyle:v8];

  v11 = [v10 scaledFontForFont:v9];

  return v11;
}

+ (id)hk_preferredRoundedFontForTextStyle:()HKAdditions additionalSymbolicTraits:
{
  v5 = [a1 hk_preferredRoundedFontForTextStyle:?];
  v6 = [v5 hk_fontByAddingSymbolicTraits:a4];

  return v6;
}

- (id)hk_monospacedFont
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DB900];
  v15[0] = *MEMORY[0x1E69DB908];
  v15[1] = v2;
  v16[0] = &unk_1F4382740;
  v16[1] = &unk_1F4382758;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v4 = *MEMORY[0x1E69DB8B0];
  v12 = v3;
  v13 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v14 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v7 = [a1 fontDescriptor];
  v8 = [v7 fontDescriptorByAddingAttributes:v6];

  v9 = MEMORY[0x1E69DB878];
  [a1 pointSize];
  v10 = [v9 fontWithDescriptor:v8 size:?];

  return v10;
}

+ (id)hk_scalableFontForTextStyle:()HKAdditions symbolicTraits:
{
  v6 = a3;
  v7 = [a1 hk_staticPreferredFontForTextStyle:v6 symbolicTraits:a4];
  v8 = [objc_alloc(MEMORY[0x1E69DCA40]) initForTextStyle:v6];

  v9 = [v8 scaledFontForFont:v7];

  return v9;
}

- (id)hk_fontByAddingSymbolicTraits:()HKAdditions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__UIFont_HKAdditions__hk_fontByAddingSymbolicTraits___block_invoke;
  v5[3] = &__block_descriptor_36_e8_I12__0I8l;
  v6 = a3;
  v3 = [a1 _hk_fontByModifyingSymbolicTraits:v5];

  return v3;
}

- (id)hk_fontByRemovingSymbolicTraits:()HKAdditions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__UIFont_HKAdditions__hk_fontByRemovingSymbolicTraits___block_invoke;
  v5[3] = &__block_descriptor_36_e8_I12__0I8l;
  v6 = a3;
  v3 = [a1 _hk_fontByModifyingSymbolicTraits:v5];

  return v3;
}

- (id)_hk_fontByModifyingSymbolicTraits:()HKAdditions
{
  v4 = a3;
  v5 = [a1 fontDescriptor];
  v6 = [a1 fontDescriptor];
  v7 = v4[2](v4, [v6 symbolicTraits]);

  v8 = [v5 fontDescriptorWithSymbolicTraits:v7];
  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];

  return v9;
}

+ (id)hk_chartLollipopValueFontSmaller
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69DB8F0];
  v8[0] = *MEMORY[0x1E69DB990];
  v0 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  v1 = *MEMORY[0x1E69DB918];
  v9[0] = v0;
  v9[1] = &unk_1F4382770;
  v2 = *MEMORY[0x1E69DB940];
  v8[1] = v1;
  v8[2] = v2;
  v9[2] = *MEMORY[0x1E69DB8D8];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (id)hk_chartCurrentValueKindFont
{
  v0 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:32770 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)hk_chartCurrentValueValueFont
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69DB8F0];
  v8[0] = *MEMORY[0x1E69DB990];
  v0 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
  v1 = *MEMORY[0x1E69DB918];
  v9[0] = v0;
  v9[1] = &unk_1F4382770;
  v2 = *MEMORY[0x1E69DB940];
  v8[1] = v1;
  v8[2] = v2;
  v9[2] = *MEMORY[0x1E69DB8D8];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (id)hk_chartActivityValueFont
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69DB8F0];
  v8[0] = *MEMORY[0x1E69DB990];
  v0 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v1 = *MEMORY[0x1E69DB918];
  v9[0] = v0;
  v9[1] = &unk_1F4382770;
  v2 = *MEMORY[0x1E69DB940];
  v8[1] = v1;
  v8[2] = v2;
  v9[2] = *MEMORY[0x1E69DB8D8];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (id)hk_chartCurrentValueUnitFont
{
  v0 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:32770 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)hk_chartCurrentValueDateFont
{
  v0 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:32770 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)hk_chrValueCellPrimaryFont
{
  v12[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDB8] addingSymbolicTraits:0x8000 options:0];
  v11 = *MEMORY[0x1E69DB990];
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v12[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v3 = *MEMORY[0x1E69DB940];
  v9[0] = *MEMORY[0x1E69DB8F0];
  v9[1] = v3;
  v4 = *MEMORY[0x1E69DB8D8];
  v10[0] = v2;
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [v0 fontDescriptorByAddingAttributes:v5];

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];

  return v7;
}

@end