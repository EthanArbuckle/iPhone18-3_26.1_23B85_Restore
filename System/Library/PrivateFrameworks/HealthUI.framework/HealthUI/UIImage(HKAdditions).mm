@interface UIImage(HKAdditions)
+ (id)hk_arrowExerciseImage;
+ (id)hk_arrowMoveImage;
+ (id)hk_arrowStandImage;
+ (id)hk_hearingHealthAudioExposureSymbolForClassification:()HKAdditions font:;
+ (id)hk_medicationsSymbolImage;
+ (id)hk_transparentInterfaceImageWithSize:()HKAdditions;
- (double)hk_scaledImageViewHeightWithScaledWidth:()HKAdditions;
- (id)hk_croppedImageWithRect:()HKAdditions;
- (id)hk_resizedInterfaceImageWithSize:()HKAdditions;
- (id)hk_watchIconImage;
@end

@implementation UIImage(HKAdditions)

- (double)hk_scaledImageViewHeightWithScaledWidth:()HKAdditions
{
  [self size];
  v5 = v4;
  [self size];

  return HKUICeilToScreenScale(a2 / (v5 / v6));
}

- (id)hk_croppedImageWithRect:()HKAdditions
{
  [self scale];
  if (v10 > 1.0)
  {
    [self scale];
    a2 = a2 * v11;
    [self scale];
    a3 = a3 * v12;
    [self scale];
    a4 = a4 * v13;
    [self scale];
    a5 = a5 * v14;
  }

  cGImage = [self CGImage];
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  v16 = CGImageCreateWithImageInRect(cGImage, v22);
  v17 = MEMORY[0x1E69DCAB8];
  [self scale];
  v19 = [v17 imageWithCGImage:v16 scale:objc_msgSend(self orientation:{"imageOrientation"), v18}];
  CGImageRelease(v16);

  return v19;
}

- (id)hk_watchIconImage
{
  [self size];
  v3 = v2;
  [self size];
  v24.size.height = v4;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v3;
  v25 = CGRectIntegral(v24);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  cGImage = [self CGImage];
  [self size];
  v11 = v10;
  v13 = v12;
  [self scale];
  v15 = v14;
  v23.width = v11;
  v23.height = v13;
  UIGraphicsBeginImageContextWithOptions(v23, 0, v15);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
  v17 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, width, height}];
  CGContextAddPath(CurrentContext, [v17 CGPath]);

  CGContextClip(CurrentContext);
  [self size];
  v21.b = 0.0;
  v21.c = 0.0;
  v21.a = 1.0;
  *&v21.d = xmmword_1C3D5D4B0;
  v21.ty = v18;
  CGContextConcatCTM(CurrentContext, &v21);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGContextDrawImage(CurrentContext, v26, cGImage);
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (id)hk_resizedInterfaceImageWithSize:()HKAdditions
{
  v6 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a2, a3}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__UIImage_HKAdditions__hk_resizedInterfaceImageWithSize___block_invoke;
  v9[3] = &unk_1E81B8870;
  v9[4] = self;
  *&v9[5] = a2;
  *&v9[6] = a3;
  v7 = [v6 imageWithActions:v9];

  return v7;
}

+ (id)hk_transparentInterfaceImageWithSize:()HKAdditions
{
  v2 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{self, a2}];
  v3 = [v2 imageWithActions:&__block_literal_global_43];

  return v3;
}

+ (id)hk_arrowMoveImage
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 imageNamed:@"arrow_move" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_arrowExerciseImage
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 imageNamed:@"arrow_exercise" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_arrowStandImage
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = HKHealthUIFrameworkBundle();
  v2 = [v0 imageNamed:@"arrow_stand" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)hk_medicationsSymbolImage
{
  v0 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pills.fill"];
  hk_medicationTrackingSymbolConfiguration = [MEMORY[0x1E69DCAD8] hk_medicationTrackingSymbolConfiguration];
  v2 = [v0 imageByApplyingSymbolConfiguration:hk_medicationTrackingSymbolConfiguration];

  return v2;
}

+ (id)hk_hearingHealthAudioExposureSymbolForClassification:()HKAdditions font:
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DB878];
  v6 = a4;
  hk_chartCurrentValueValueFont = [v5 hk_chartCurrentValueValueFont];

  v8 = MEMORY[0x1E69DCAD8];
  if (hk_chartCurrentValueValueFont == v6)
  {
    [v6 pointSize];
    v11 = v10;

    v9 = [v8 configurationWithPointSize:4 weight:1 scale:v11];
  }

  else
  {
    v9 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6 scale:1];
  }

  hk_hearingHealthAudioExposureBackground = [MEMORY[0x1E69DC888] hk_hearingHealthAudioExposureBackground];
  v20[0] = hk_hearingHealthAudioExposureBackground;
  v13 = [MEMORY[0x1E69DC888] hk_hearingHealthAudioExposureColorForClassification:a3];
  v20[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

  v15 = [MEMORY[0x1E69DCAD8] configurationWithPaletteColors:v14];
  if (a3 == 1)
  {
    v16 = @"checkmark.circle.fill";
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v16 = @"exclamationmark.triangle.fill";
LABEL_8:
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:v16 withConfiguration:v9];
    goto LABEL_10;
  }

  v17 = 0;
LABEL_10:
  v18 = [v17 imageByApplyingSymbolConfiguration:v15];

  return v18;
}

@end