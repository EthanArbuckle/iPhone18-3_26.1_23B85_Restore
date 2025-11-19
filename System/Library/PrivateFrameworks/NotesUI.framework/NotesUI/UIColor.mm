@interface UIColor
@end

@implementation UIColor

void __26__UIColor_IC__ICTintColor__block_invoke(uint64_t a1)
{
  v2 = __26__UIColor_IC__ICTintColor__block_invoke_2(a1, @"tintColorRed");
  if (v2 == -1.0)
  {
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [MEMORY[0x1E69DC888] colorNamed:@"notes_tint_color" inBundle:v9 compatibleWithTraitCollection:0];
    v8 = ICTintColor_color;
    ICTintColor_color = v7;
  }

  else
  {
    v3 = __26__UIColor_IC__ICTintColor__block_invoke_2(v1, @"tintColorGreen");
    v5 = [MEMORY[0x1E69DC888] colorWithRed:v2 / 255.0 green:v3 / 255.0 blue:__26__UIColor_IC__ICTintColor__block_invoke_2(v4 alpha:{@"tintColorBlue", 1.0}];
    v6 = ICTintColor_color;
    ICTintColor_color = v5;

    sUsingCustomTintColor = 1;
  }
}

double __26__UIColor_IC__ICTintColor__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695E000];
  v3 = a2;
  v4 = [v2 standardUserDefaults];
  v5 = [v4 objectForKey:v3];

  v6 = -1.0;
  if (v5)
  {
    objc_opt_class();
    v7 = ICDynamicCast();
    v8 = [v7 isEqualToString:&stru_1F4F94F00];

    if ((v8 & 1) == 0)
    {
      [v5 doubleValue];
      v6 = v9;
    }
  }

  return v6;
}

void __40__UIColor_IC__preferredDefaultFontColor__block_invoke()
{
  v0 = MEMORY[0x1E69DC888];
  v1 = MEMORY[0x1E696AAE8];
  v2 = ICUIFrameworkBundleIdentifier();
  v3 = [v1 bundleWithIdentifier:v2];
  v8 = [v0 colorNamed:@"default_body_text_color" inBundle:v3 compatibleWithTraitCollection:0];

  if (v8 && ([MEMORY[0x1E69DC938] ic_isVision] & 1) == 0)
  {
    v7 = v8;
    v4 = preferredDefaultFontColor_sDefaultFontColor;
    preferredDefaultFontColor_sDefaultFontColor = v7;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [v4 ic_resolvedColorForLightUserInterfaceStyle];
    v6 = preferredDefaultFontColor_sDefaultFontColor;
    preferredDefaultFontColor_sDefaultFontColor = v5;
  }
}

void __37__UIColor_IC__ICTintedSelectionColor__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [MEMORY[0x1E69DC888] colorNamed:@"notes_selection_tint_color" inBundle:v2 compatibleWithTraitCollection:0];
  v1 = ICTintedSelectionColor_sTintedSelectionColor;
  ICTintedSelectionColor_sTintedSelectionColor = v0;
}

uint64_t __54__UIColor_IC__ICSelectedAttachmentBrickHighlightColor__block_invoke()
{
  ICSelectedAttachmentBrickHighlightColor_color = [MEMORY[0x1E69DC888] colorNamed:@"selected_search_highlight"];

  return MEMORY[0x1EEE66BB8]();
}

void __46__UIColor_NotesColors__ic_notesAppYellowColor__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E69DC888]) initWithRed:0.917647059 green:0.733333333 blue:0.0 alpha:1.0];
  v0 = [v2 ic_resolvedColorForNoteEditor];
  v1 = ic_notesAppYellowColor_appYellowColor;
  ic_notesAppYellowColor_appYellowColor = v0;
}

void __48__UIColor_NotesColors__ic_notesDefaultTextColor__block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.270588235 green:0.270588235 blue:0.270588235 alpha:1.0];
  v0 = [v2 ic_resolvedColorForNoteEditor];
  v1 = ic_notesDefaultTextColor_defaultTextColor;
  ic_notesDefaultTextColor_defaultTextColor = v0;
}

@end