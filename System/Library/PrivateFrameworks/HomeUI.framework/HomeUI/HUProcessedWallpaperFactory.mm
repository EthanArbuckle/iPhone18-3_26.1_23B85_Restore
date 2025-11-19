@interface HUProcessedWallpaperFactory
+ (id)_defaultBackdropSettings;
- (CGRect)_scaledCropRectForBounds:(CGRect)a3 wallpaper:(id)a4 image:(id)a5;
- (NSArray)supportedVariants;
- (id)_croppedImageFromWallpaper:(id)a3 image:(id)a4;
- (id)_darkContentBlurredImageForWallpaper:(id)a3 image:(id)a4;
- (id)_darkContentDarkModeBlurredImageForWallpaper:(id)a3 image:(id)a4;
- (id)_imageByApplyingLayerEffects:(id)a3 toImage:(id)a4;
- (id)_layerWithCompositingFilterType:(id)a3 color:(id)a4;
- (id)_lightContentBlurredImageForWallpaper:(id)a3 image:(id)a4;
- (id)_processedImageForWallpaper:(id)a3 image:(id)a4;
- (id)applyCustomFilterForWallpaper:(id)a3 image:(id)a4;
- (id)processedImageForVariant:(int64_t)a3 wallpaper:(id)a4 image:(id)a5;
@end

@implementation HUProcessedWallpaperFactory

- (id)applyCustomFilterForWallpaper:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_20D0E1CD4(v7, [v6 type] == 6);

  return v9;
}

- (NSArray)supportedVariants
{
  if (_MergedGlobals_635 != -1)
  {
    dispatch_once(&_MergedGlobals_635, &__block_literal_global_79_1);
  }

  v3 = qword_281122068;

  return v3;
}

void __48__HUProcessedWallpaperFactory_supportedVariants__block_invoke_2()
{
  v0 = qword_281122068;
  qword_281122068 = &unk_282492CA8;
}

- (id)processedImageForVariant:(int64_t)a3 wallpaper:(id)a4 image:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_16;
  }

  NSLog(&cfstr_AskingForOrigi.isa, v8);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v11 = [(HUProcessedWallpaperFactory *)self _lightContentBlurredImageForWallpaper:v8 image:v10];
      goto LABEL_15;
    }

    if (a3 == 4)
    {
      v11 = [(HUProcessedWallpaperFactory *)self _darkContentDarkModeBlurredImageForWallpaper:v8 image:v10];
      goto LABEL_15;
    }

LABEL_12:
    v11 = v10;
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v11 = [(HUProcessedWallpaperFactory *)self _processedImageForWallpaper:v8 image:v10];
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    goto LABEL_12;
  }

  v11 = [(HUProcessedWallpaperFactory *)self _darkContentBlurredImageForWallpaper:v8 image:v10];
LABEL_15:
  v12 = v11;
LABEL_16:

  return v12;
}

- (CGRect)_scaledCropRectForBounds:(CGRect)a3 wallpaper:(id)a4 image:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  v8 = a4;
  v9 = a5;
  [v9 scale];
  v11 = v10;
  v12 = [v8 cropInfo];

  if (v12)
  {
    v13 = [v8 cropInfo];
    [v13 scale];
    v15 = v14;

    v16 = [v8 cropInfo];
    [v16 center];
    v18 = v17;
    v20 = v19;

    v11 = 1.0;
  }

  else
  {
    [v9 size];
    v15 = v21 / width;
    [v9 size];
    if (v15 >= v22 / height)
    {
      v15 = v22 / height;
    }

    [v9 size];
    UIRectGetCenter();
    v18 = v23;
    v20 = v24;
  }

  v25 = width * v15;
  v26 = height * v15;
  CGAffineTransformMakeScale(&v35, v11, v11);
  v36.origin.x = v18 - round(v25 * 0.5);
  v36.origin.y = v20 - round(v26 * 0.5);
  v36.size.width = v25;
  v36.size.height = v26;
  v37 = CGRectApplyAffineTransform(v36, &v35);
  x = v37.origin.x;
  y = v37.origin.y;
  v29 = v37.size.width;
  v30 = v37.size.height;

  v31 = x;
  v32 = y;
  v33 = v29;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (id)_croppedImageFromWallpaper:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277D14D10] contentSizeForWallpaper];
  v9 = v8;
  v11 = v10;
  [v7 hf_sizeInScreenScale];
  v13 = v12;
  v15 = v14;
  v16 = v11;
  v17 = v9;
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v18 = v13 / v9;
    v19 = v15 / v11;
    v20 = v13 / v9 < 1.0 || v19 < 1.0;
    v16 = v11;
    v17 = v9;
    if (v20)
    {
      if (v18 >= v19)
      {
        v18 = v15 / v11;
      }

      v17 = v9 * v18;
      v16 = v11 * v18;
    }
  }

  if ([v6 type] == 2 || objc_msgSend(v6, "type") == 3 || objc_msgSend(v6, "type") == 4 || objc_msgSend(v6, "type") == 5)
  {
    goto LABEL_14;
  }

  v23 = [v6 cropInfo];
  if (v23)
  {
  }

  else if (v17 == v13 && v16 == v15)
  {
LABEL_14:
    v21 = v7;
    goto LABEL_15;
  }

  v24 = [v7 imageWithNormalizedOrientation];
  v25 = [MEMORY[0x277D759A0] mainScreen];
  [v25 scale];
  v27 = v26;
  v42.width = v17;
  v42.height = v16;
  UIGraphicsBeginImageContextWithOptions(v42, 1, v27);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, v16);
  v29 = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(v29, 1.0, -1.0);
  [(HUProcessedWallpaperFactory *)self _scaledCropRectForBounds:v6 wallpaper:v7 image:0.0, 0.0, v9, v11];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v24 CGImage];
  v43.origin.x = v31;
  v43.origin.y = v33;
  v43.size.width = v35;
  v43.size.height = v37;
  v39 = CGImageCreateWithImageInRect(v38, v43);
  v40 = UIGraphicsGetCurrentContext();
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = v17;
  v44.size.height = v16;
  CGContextDrawImage(v40, v44, v39);
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  CGImageRelease(v39);
  UIGraphicsEndImageContext();

LABEL_15:

  return v21;
}

- (id)_processedImageForWallpaper:(id)a3 image:(id)a4
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUProcessedWallpaperFactory *)self _croppedImageFromWallpaper:v6 image:a4];
  if ([v6 type] == 4 || objc_msgSend(v6, "type") == 5 || objc_msgSend(v6, "type") == 1 || objc_msgSend(v6, "type") == 6)
  {
    v8 = v7;
  }

  else
  {
    if ([v6 type] == 2)
    {
      v10 = 0.04;
      v11 = 0.08;
    }

    else
    {
      v12 = [v6 type] == 3;
      v11 = dbl_20D5CB2B0[v12];
      v10 = dbl_20D5CB2C0[v12];
    }

    v13 = *MEMORY[0x277CDA2F8];
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:v11];
    v15 = [(HUProcessedWallpaperFactory *)self _layerWithCompositingFilterType:v13 color:v14];

    v16 = *MEMORY[0x277CDA2F0];
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:v10];
    v18 = [(HUProcessedWallpaperFactory *)self _layerWithCompositingFilterType:v16 color:v17];

    v20[0] = v15;
    v20[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v8 = [(HUProcessedWallpaperFactory *)self _imageByApplyingLayerEffects:v19 toImage:v7];
  }

  return v8;
}

- (id)_darkContentBlurredImageForWallpaper:(id)a3 image:(id)a4
{
  v4 = a4;
  [v4 scale];
  v6 = v5;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v9 = v8;

  if (v6 != v9)
  {
    [v4 scale];
    v11 = v10;
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 scale];
    NSLog(&cfstr_WallpaperProce.isa, v11, v13);
  }

  v14 = [objc_opt_class() _defaultBackdropSettings];
  [v14 setSaturationDeltaFactor:5.0];
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
  [v14 setColorTint:v15];

  [v14 setColorTintAlpha:0.8];
  v16 = [v4 _applyBackdropViewSettings:v14];

  return v16;
}

- (id)_darkContentDarkModeBlurredImageForWallpaper:(id)a3 image:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() _defaultBackdropSettings];
  [v5 setSaturationDeltaFactor:5.0];
  v6 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
  [v5 setColorTint:v6];

  [v5 setColorTintAlpha:0.8];
  v7 = [v4 _applyBackdropViewSettings:v5];

  return v7;
}

- (id)_lightContentBlurredImageForWallpaper:(id)a3 image:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [objc_opt_class() _defaultBackdropSettings];
  [v6 setRenderingHint:1];
  [v6 setSaturationDeltaFactor:4.0];
  [v6 setColorTint:0];
  [v6 setColorTintAlpha:0.0];
  v7 = *MEMORY[0x277CDA5C0];
  v8 = [MEMORY[0x277D75348] colorWithWhite:0.305882353 alpha:0.3];
  v9 = [(HUProcessedWallpaperFactory *)self _layerWithCompositingFilterType:v7 color:v8];

  v10 = *MEMORY[0x277CDA5D8];
  v11 = [MEMORY[0x277D75348] colorWithWhite:0.396078431 alpha:0.32];
  v12 = [(HUProcessedWallpaperFactory *)self _layerWithCompositingFilterType:v10 color:v11];

  v17[0] = v9;
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v14 = [v5 _applyBackdropViewSettings:v6];

  v15 = [(HUProcessedWallpaperFactory *)self _imageByApplyingLayerEffects:v13 toImage:v14];

  return v15;
}

+ (id)_defaultBackdropSettings
{
  v2 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:-4];
  [v2 setRequiresColorStatistics:0];
  [v2 setGrayscaleTintAlpha:0.0];
  [v2 setGrayscaleTintMaskAlpha:0.0];
  [v2 setColorTintMaskAlpha:0.0];
  [v2 setColorBurnTintAlpha:0.0];
  [v2 setDarkeningTintAlpha:0.0];
  [v2 setFilterMaskAlpha:0.0];
  [v2 setBlurRadius:36.0];

  return v2;
}

- (id)_layerWithCompositingFilterType:(id)a3 color:(id)a4
{
  v5 = MEMORY[0x277CD9ED0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 layer];
  v9 = [MEMORY[0x277CD9EA0] filterWithType:v7];

  [v8 setCompositingFilter:v9];
  v10 = [v6 CGColor];

  [v8 setBackgroundColor:v10];

  return v8;
}

- (id)_imageByApplyingLayerEffects:(id)a3 toImage:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v6 hf_sizeInScreenScale];
  v8 = v7;
  v10 = v9;
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  v13 = [MEMORY[0x277CD9ED0] layer];
  [v13 setContents:{objc_msgSend(v6, "CGImage")}];
  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 scale];
  [v13 setContentsScale:?];

  [v13 setFrame:{v11, v12, v8, v10}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        [v20 setFrame:{v11, v12, v8, v10}];
        [v13 addSublayer:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v8, v10}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__HUProcessedWallpaperFactory__imageByApplyingLayerEffects_toImage___block_invoke;
  v25[3] = &unk_277DC3310;
  v26 = v13;
  v22 = v13;
  v23 = [v21 imageWithActions:v25];

  return v23;
}

uint64_t __68__HUProcessedWallpaperFactory__imageByApplyingLayerEffects_toImage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];

  return [v2 renderInContext:v3];
}

@end