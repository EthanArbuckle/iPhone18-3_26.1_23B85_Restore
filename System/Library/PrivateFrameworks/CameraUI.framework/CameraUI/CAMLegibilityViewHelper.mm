@interface CAMLegibilityViewHelper
+ (id)_imageFromLabel:(id)a3 sizeToFit:(BOOL)a4;
+ (id)imageForText:(id)a3 font:(id)a4 textAlignment:(int64_t)a5 constrainedToSize:(CGSize)a6;
+ (id)newLegibilityViewWithSettings:(id)a3 forLabel:(id)a4 sizeToFit:(BOOL)a5;
@end

@implementation CAMLegibilityViewHelper

+ (id)newLegibilityViewWithSettings:(id)a3 forLabel:(id)a4 sizeToFit:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [a1 _imageFromLabel:a4 sizeToFit:v5];
  v10 = objc_alloc(MEMORY[0x1E69DD5C8]);
  v11 = [v10 initWithSettings:v8 strength:v9 image:0 shadowImage:*MEMORY[0x1E69DE9F8] options:*MEMORY[0x1E69DE9E0]];

  return v11;
}

+ (id)_imageFromLabel:(id)a3 sizeToFit:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  v8 = v7;

  if (v4)
  {
    [v5 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    UIRectIntegralWithScale();
    [v5 setFrame:?];
  }

  [v5 frame];
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
    v17 = [v5 layer];
    [v17 renderInContext:CurrentContext];

    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v13;
}

+ (id)imageForText:(id)a3 font:(id)a4 textAlignment:(int64_t)a5 constrainedToSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v32[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = MEMORY[0x1E69DCEB0];
  v12 = a4;
  v13 = [v11 mainScreen];
  [v13 scale];
  v15 = v14;

  v16 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v16 setAlignment:a5];
  v17 = *MEMORY[0x1E69DB648];
  v32[0] = v12;
  v18 = *MEMORY[0x1E69DB650];
  v31[0] = v17;
  v31[1] = v18;
  v19 = [MEMORY[0x1E69DC888] whiteColor];
  v31[2] = *MEMORY[0x1E69DB688];
  v32[1] = v19;
  v32[2] = v16;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

  [v10 boundingRectWithSize:1 options:v20 attributes:0 context:{width, height}];
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
      [v10 drawWithRect:1 options:v20 attributes:0 context:{v27, v28, v29, v26}];
      v25 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  return v25;
}

@end