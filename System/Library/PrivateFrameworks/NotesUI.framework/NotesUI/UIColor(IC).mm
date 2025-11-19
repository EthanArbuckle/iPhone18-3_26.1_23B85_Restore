@interface UIColor(IC)
+ (id)ICBackgroundColor;
+ (id)ICBlockQuoteBackgroundColor;
+ (id)ICDarkenedTintColor;
+ (id)ICGrayTodoButtonColor;
+ (id)ICGroupedBackgroundColor;
+ (id)ICHashtagColor;
+ (id)ICHashtagUnconfirmedColor;
+ (id)ICLearnMoreButtonPressedColor;
+ (id)ICLearnMoreLinkColor;
+ (id)ICLinkAcceleratorUnconfirmedColor;
+ (id)ICMentionUnconfirmedColor;
+ (id)ICSelectedAttachmentBrickHighlightColor;
+ (id)ICTintColor;
+ (id)ICTintedSelectionColor;
+ (id)ICUnknownInlineAttachmentTextColor;
+ (id)ic_attachmentBackgroundColor;
+ (id)ic_attachmentBackgroundColorForTraitCollection:()IC;
+ (id)ic_colorFromString:()IC;
+ (id)ic_darkerAccessibilityColorForColor:()IC;
+ (id)ic_emphasisBackgroudColorFromColor:()IC;
+ (id)ic_imageFromColor:()IC size:;
+ (id)ic_noteEditorBackgroundColor;
+ (id)ic_noteEditorLabelColor;
+ (id)ic_noteEditorPreviewColorForceLightContent:()IC;
+ (id)ic_noteEditorSecondaryLabelColor;
+ (id)ic_notePreviewBackgroundLightContent:()IC;
+ (id)ic_tintColorWithTraitCollection:()IC;
+ (id)preferredDefaultFontColor;
- (BOOL)ic_isWhite;
- (id)ic_colorBlendedWithColor:()IC;
- (id)ic_colorBlendedWithColor:()IC fraction:;
- (id)ic_colorString;
- (id)ic_resolvedColorForLightUserInterfaceStyle;
- (id)ic_resolvedColorForNoteEditor;
- (uint64_t)ic_isBlack;
- (uint64_t)ic_resolvedColor;
@end

@implementation UIColor(IC)

+ (id)ICGroupedBackgroundColor
{
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v0 = ;

  return v0;
}

+ (id)ICTintColor
{
  if (ICTintColor_onceToken[0] != -1)
  {
    +[UIColor(IC) ICTintColor];
  }

  v0 = ICTintColor_color;
  if (!ICTintColor_color)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((color) != nil)" functionName:"+[UIColor(IC) ICTintColor]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "color"}];
    v0 = ICTintColor_color;
  }

  return v0;
}

+ (id)preferredDefaultFontColor
{
  if (preferredDefaultFontColor_onceToken != -1)
  {
    +[UIColor(IC) preferredDefaultFontColor];
  }

  v1 = preferredDefaultFontColor_sDefaultFontColor;

  return v1;
}

- (id)ic_resolvedColorForNoteEditor
{
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v2 = [a1 ic_resolvedColorForLightUserInterfaceStyle];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

+ (id)ic_noteEditorSecondaryLabelColor
{
  v0 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v1 = [v0 ic_resolvedColorForNoteEditor];

  return v1;
}

+ (id)ic_noteEditorBackgroundColor
{
  v0 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v1 = [v0 ic_resolvedColorForNoteEditor];

  return v1;
}

+ (id)ICDarkenedTintColor
{
  v2 = [a1 ICTintColor];
  v3 = [a1 ic_darkerAccessibilityColorForColor:v2];

  return v3;
}

+ (id)ic_darkerAccessibilityColorForColor:()IC
{
  v3 = a3;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if ([v3 getHue:&v11 saturation:&v10 brightness:&v9 alpha:&v8])
  {
    v4 = v3;
  }

  else
  {
    ConvertedToSRGB = TSUCGColorCreateConvertedToSRGB([v3 CGColor]);
    v4 = [MEMORY[0x1E69DC888] colorWithCGColor:ConvertedToSRGB];

    CGColorRelease(ConvertedToSRGB);
    if (([v4 getHue:&v11 saturation:&v10 brightness:&v9 alpha:&v8] & 1) == 0)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"+[UIColor(IC) ic_darkerAccessibilityColorForColor:]" simulateCrash:1 showAlert:0 format:{@"Trying to darken color, but even converting to SRGB failed."}];
    }
  }

  v6 = [MEMORY[0x1E69DC888] colorWithHue:v11 saturation:v10 brightness:v9 * 0.8 alpha:v8];

  return v6;
}

+ (id)ICTintedSelectionColor
{
  v1 = [a1 ICTintColor];
  if (sUsingCustomTintColor == 1)
  {
    v2 = [MEMORY[0x1E69DC888] ICTintColor];
    v3 = [v2 colorWithAlphaComponent:0.2];
  }

  else
  {
    if (ICTintedSelectionColor_onceToken[0] != -1)
    {
      +[UIColor(IC) ICTintedSelectionColor];
    }

    v3 = ICTintedSelectionColor_sTintedSelectionColor;
  }

  return v3;
}

+ (id)ic_attachmentBackgroundColorForTraitCollection:()IC
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 ic_attachmentBackgroundColor];
    v6 = [v5 resolvedColorWithTraitCollection:v4];
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((traitCollection) != nil)" functionName:"+[UIColor(IC) ic_attachmentBackgroundColorForTraitCollection:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "traitCollection"}];
    v6 = 0;
  }

  return v6;
}

+ (id)ic_tintColorWithTraitCollection:()IC
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 tintColor];
  v6 = [v5 resolvedColorWithTraitCollection:v4];

  return v6;
}

- (uint64_t)ic_resolvedColor
{
  v1 = [a1 CGColor];
  v2 = MEMORY[0x1E69DC888];

  return [v2 colorWithCGColor:v1];
}

- (id)ic_resolvedColorForLightUserInterfaceStyle
{
  v2 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  v3 = [a1 resolvedColorWithTraitCollection:v2];

  return v3;
}

+ (id)ICBackgroundColor
{
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v0 = ;

  return v0;
}

+ (id)ICSelectedAttachmentBrickHighlightColor
{
  if (ICSelectedAttachmentBrickHighlightColor_onceToken != -1)
  {
    +[UIColor(IC) ICSelectedAttachmentBrickHighlightColor];
  }

  v1 = ICSelectedAttachmentBrickHighlightColor_color;

  return v1;
}

+ (id)ICGrayTodoButtonColor
{
  v1 = [a1 tertiaryLabelColor];
  v2 = [v1 ic_resolvedColorForNoteEditor];

  return v2;
}

+ (id)ICLearnMoreButtonPressedColor
{
  v1 = [a1 ICLearnMoreButtonUnpressedColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  return v2;
}

+ (id)ICLearnMoreLinkColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] ICDarkenedTintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] ICTintColor];
  }
  v0 = ;

  return v0;
}

+ (id)ICHashtagUnconfirmedColor
{
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v0 = ;

  return v0;
}

+ (id)ICHashtagColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] ICDarkenedTintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] ICTintColor];
  }
  v0 = ;

  return v0;
}

+ (id)ICLinkAcceleratorUnconfirmedColor
{
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v0 = ;

  return v0;
}

+ (id)ICMentionUnconfirmedColor
{
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v0 = ;

  return v0;
}

+ (id)ICUnknownInlineAttachmentTextColor
{
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v0 = ;

  return v0;
}

+ (id)ic_imageFromColor:()IC size:
{
  v7 = a5;
  v13.width = a1;
  v13.height = a2;
  UIGraphicsBeginImageContext(v13);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [v7 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v9);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = a1;
  v14.size.height = a2;
  CGContextFillRect(CurrentContext, v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (id)ic_attachmentBackgroundColor
{
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    [MEMORY[0x1E69DC888] ic_dynamicWhiteBlackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] ICBackgroundColor];
  }
  v0 = ;

  return v0;
}

+ (id)ICBlockQuoteBackgroundColor
{
  v0 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v1 = [v0 ic_resolvedColorForNoteEditor];

  return v1;
}

+ (id)ic_noteEditorLabelColor
{
  v0 = [MEMORY[0x1E69DC888] labelColor];
  v1 = [v0 ic_resolvedColorForNoteEditor];

  return v1;
}

+ (id)ic_noteEditorPreviewColorForceLightContent:()IC
{
  if (a3)
  {
    v3 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    v3 = [v4 ic_resolvedColorForNoteEditor];
  }

  return v3;
}

+ (id)ic_notePreviewBackgroundLightContent:()IC
{
  if (a3)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v3 = ;

  return v3;
}

+ (id)ic_colorFromString:()IC
{
  v0 = ICCGColorCreateWithString();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x1E69DC888] colorWithCGColor:v0];
    CGColorRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)ic_emphasisBackgroudColorFromColor:()IC
{
  v3 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(a3, "CGColor")}];
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0;
  v7 = 0.0;
  [v3 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v4 = [MEMORY[0x1E69DC888] colorWithRed:fmax(v9 * 0.85 green:0.0) blue:fmax(v8 * 0.85 alpha:{0.0), fmax(v7 * 0.85, 0.0), 0.15}];

  return v4;
}

- (id)ic_colorString
{
  v1 = [a1 CGColor];
  if (v1)
  {
    v1 = ICStringFromCGColor();
  }

  return v1;
}

- (uint64_t)ic_isBlack
{
  v1 = [a1 CGColor];

  return MEMORY[0x1EEE23650](v1);
}

- (BOOL)ic_isWhite
{
  [a1 CGColor];
  TSUColorLightness();
  return v1 == 1.0;
}

- (id)ic_colorBlendedWithColor:()IC
{
  v4 = a3;
  if (v4 && ![a1 isEqual:v4])
  {
    v5 = [a1 _colorBlendedWithColor:v4];
  }

  else
  {
    v5 = a1;
  }

  v6 = v5;

  return v6;
}

- (id)ic_colorBlendedWithColor:()IC fraction:
{
  v6 = a4;
  if (v6 && ![a1 isEqual:v6])
  {
    [a1 alphaComponent];
    v9 = v8;
    [v6 alphaComponent];
    v11 = v10 * a2 + (1.0 - a2) * v9;
    v12 = [a1 colorWithAlphaComponent:1.0];
    v13 = [v6 colorWithAlphaComponent:a2];
    v14 = [v12 _colorBlendedWithColor:v13];

    v7 = [v14 colorWithAlphaComponent:v11];
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

@end