@interface UIFont(CUIKWidgetFontUtils)
- (id)CUIKFontByApplyingFeatureSettings:()CUIKWidgetFontUtils;
- (id)CUIKFontWithAlternativePunctuation;
- (id)CUIKFontWithLocalizedSmallCaps:()CUIKWidgetFontUtils;
@end

@implementation UIFont(CUIKWidgetFontUtils)

- (id)CUIKFontWithAlternativePunctuation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DB900];
  v8[0] = *MEMORY[0x1E69DB908];
  v8[1] = v2;
  v9[0] = &unk_1F4ABEC60;
  v9[1] = &unk_1F4ABEC78;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v7 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];

  v5 = [self CUIKFontByApplyingFeatureSettings:v4];

  return v5;
}

- (id)CUIKFontWithLocalizedSmallCaps:()CUIKWidgetFontUtils
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *MEMORY[0x1E69DB900];
    v14[0] = *MEMORY[0x1E69DB908];
    v4 = v14[0];
    v14[1] = v5;
    v15[0] = &unk_1F4ABEC18;
    v15[1] = &unk_1F4ABEC30;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12[0] = v4;
    v12[1] = v5;
    v13[0] = &unk_1F4ABEC48;
    v13[1] = &unk_1F4ABEC30;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v11[0] = v6;
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

    selfCopy = [self CUIKFontByApplyingFeatureSettings:v8];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)CUIKFontByApplyingFeatureSettings:()CUIKWidgetFontUtils
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  fontDescriptor = [self fontDescriptor];
  v10 = *MEMORY[0x1E69DB8B0];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [fontDescriptor fontDescriptorByAddingAttributes:v6];

  v8 = [objc_opt_class() fontWithDescriptor:v7 size:0.0];

  return v8;
}

@end