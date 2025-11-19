@interface UIImage(PaperBoardUtilities)
+ (id)pbui_thumbnailImageForImage:()PaperBoardUtilities;
- (CGImage)pbui_colorSpace;
- (id)pbui_resizedImageForCurrentMagnifyMode;
- (uint64_t)pbui_EXIFOrientation;
@end

@implementation UIImage(PaperBoardUtilities)

+ (id)pbui_thumbnailImageForImage:()PaperBoardUtilities
{
  v3 = a3;
  [v3 scale];
  v5 = v4;
  [v3 size];
  v7 = 0;
  if (v8 > 0.0 && v6 > 0.0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 scale];
    v12 = v11;

    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 _referenceBounds];
    v15 = v14;
    v17 = v16;

    v18 = v12 * v15;
    v19 = v12 * v17;
    +[PBUIWallpaperParallaxSettings minimumWallpaperSizeForCurrentDevice];
    UIRectCenteredIntegralRect();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    CGAffineTransformMakeScale(&v29, v12, v12);
    CGAffineTransformInvert(&v30, &v29);
    v32.origin.x = v21;
    v32.origin.y = v23;
    v32.size.width = v25;
    v32.size.height = v27;
    v33 = CGRectApplyAffineTransform(v32, &v30);
    v7 = [v3 pbui_cropImageWithRect:0 outputSize:v33.origin.x preservingAspectRatio:{v33.origin.y, v33.size.width, v33.size.height, v12 / v5 * 206.0 / v12, v12 / v5 * round(v19 * (206.0 / v18)) / v12}];
    objc_autoreleasePoolPop(v9);
  }

  return v7;
}

- (CGImage)pbui_colorSpace
{
  result = [a1 CGImage];
  if (result)
  {

    return CGImageGetColorSpace(result);
  }

  return result;
}

- (id)pbui_resizedImageForCurrentMagnifyMode
{
  v2 = +[PBUIMagnifyMode currentMagnifyMode];
  [v2 zoomFactor];
  *&v3 = fabsf(*&v3 + -1.0);
  if (v2)
  {
    v4 = *&v3 < 2.2204e-16;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v9 = a1;
  }

  else
  {
    [v2 zoomFactor];
    v6 = 1.0 / v5;
    [a1 size];
    v12 = v8;
    v13 = v7;
    CGAffineTransformMakeScale(&v14, v6, v6);
    v9 = [a1 pui_resizeImageToSize:{vmlaq_n_f64(vmulq_n_f64(*&v14.c, v12), *&v14.a, v13)}];
  }

  v10 = v9;

  return v10;
}

- (uint64_t)pbui_EXIFOrientation
{
  v1 = [a1 imageOrientation];

  return MEMORY[0x2821DE858](v1);
}

@end