@interface CAMLegibilityViewHelper
+ (id)_imageFromLabel:(id)label sizeToFit:(BOOL)fit;
+ (id)imageForText:(id)text font:(id)font textAlignment:(int64_t)alignment constrainedToSize:(CGSize)size;
+ (id)newLegibilityViewWithSettings:(id)settings forLabel:(id)label sizeToFit:(BOOL)fit;
@end

@implementation CAMLegibilityViewHelper

+ (id)newLegibilityViewWithSettings:(id)settings forLabel:(id)label sizeToFit:(BOOL)fit
{
  fitCopy = fit;
  settingsCopy = settings;
  v9 = [self _imageFromLabel:label sizeToFit:fitCopy];
  v10 = objc_alloc(MEMORY[0x1E69DD5C8]);
  v11 = [v10 initWithSettings:settingsCopy strength:v9 image:0 shadowImage:*MEMORY[0x1E69DE9F8] options:*MEMORY[0x1E69DE9E0]];

  return v11;
}

+ (id)_imageFromLabel:(id)label sizeToFit:(BOOL)fit
{
  fitCopy = fit;
  labelCopy = label;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  if (fitCopy)
  {
    [labelCopy sizeThatFits:{1.79769313e308, 1.79769313e308}];
    UIRectIntegralWithScale();
    [labelCopy setFrame:?];
  }

  [labelCopy frame];
  v13 = 0;
  if (v11 > 0.0 && v12 > 0.0)
  {
    v14 = v9;
    v15 = v10;
    v20.width = v11;
    v20.height = v12;
    UIGraphicsBeginImageContextWithOptions(v20, 0, v8);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(CurrentContext, -v14, -v15);
    layer = [labelCopy layer];
    [layer renderInContext:CurrentContext];

    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v13;
}

+ (id)imageForText:(id)text font:(id)font textAlignment:(int64_t)alignment constrainedToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v32[3] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v11 = MEMORY[0x1E69DCEB0];
  fontCopy = font;
  mainScreen = [v11 mainScreen];
  [mainScreen scale];
  v15 = v14;

  v16 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v16 setAlignment:alignment];
  v17 = *MEMORY[0x1E69DB648];
  v32[0] = fontCopy;
  v18 = *MEMORY[0x1E69DB650];
  v31[0] = v17;
  v31[1] = v18;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v31[2] = *MEMORY[0x1E69DB688];
  v32[1] = whiteColor;
  v32[2] = v16;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

  [textCopy boundingRectWithSize:1 options:v20 attributes:0 context:{width, height}];
  UIRectIntegralWithScale();
  v25 = 0;
  if (v23 > 0.0)
  {
    v26 = v24;
    if (v24 > 0.0)
    {
      v27 = v21;
      v28 = v22;
      v29 = v23;
      v34.width = v23;
      v34.height = v24;
      UIGraphicsBeginImageContextWithOptions(v34, 0, v15);
      [textCopy drawWithRect:1 options:v20 attributes:0 context:{v27, v28, v29, v26}];
      v25 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  return v25;
}

@end