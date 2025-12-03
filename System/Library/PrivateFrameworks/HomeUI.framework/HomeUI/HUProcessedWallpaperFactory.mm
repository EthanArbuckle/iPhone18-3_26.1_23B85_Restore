@interface HUProcessedWallpaperFactory
+ (id)_defaultBackdropSettings;
- (CGRect)_scaledCropRectForBounds:(CGRect)bounds wallpaper:(id)wallpaper image:(id)image;
- (NSArray)supportedVariants;
- (id)_croppedImageFromWallpaper:(id)wallpaper image:(id)image;
- (id)_darkContentBlurredImageForWallpaper:(id)wallpaper image:(id)image;
- (id)_darkContentDarkModeBlurredImageForWallpaper:(id)wallpaper image:(id)image;
- (id)_imageByApplyingLayerEffects:(id)effects toImage:(id)image;
- (id)_layerWithCompositingFilterType:(id)type color:(id)color;
- (id)_lightContentBlurredImageForWallpaper:(id)wallpaper image:(id)image;
- (id)_processedImageForWallpaper:(id)wallpaper image:(id)image;
- (id)applyCustomFilterForWallpaper:(id)wallpaper image:(id)image;
- (id)processedImageForVariant:(int64_t)variant wallpaper:(id)wallpaper image:(id)image;
@end

@implementation HUProcessedWallpaperFactory

- (id)applyCustomFilterForWallpaper:(id)wallpaper image:(id)image
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  selfCopy = self;
  v9 = sub_20D0E1CD4(imageCopy, [wallpaperCopy type] == 6);

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

- (id)processedImageForVariant:(int64_t)variant wallpaper:(id)wallpaper image:(id)image
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  v10 = imageCopy;
  if (variant)
  {
    if (imageCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_16;
  }

  NSLog(&cfstr_AskingForOrigi.isa, wallpaperCopy);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (variant > 2)
  {
    if (variant == 3)
    {
      v11 = [(HUProcessedWallpaperFactory *)self _lightContentBlurredImageForWallpaper:wallpaperCopy image:v10];
      goto LABEL_15;
    }

    if (variant == 4)
    {
      v11 = [(HUProcessedWallpaperFactory *)self _darkContentDarkModeBlurredImageForWallpaper:wallpaperCopy image:v10];
      goto LABEL_15;
    }

LABEL_12:
    v11 = v10;
    goto LABEL_15;
  }

  if (variant == 1)
  {
    v11 = [(HUProcessedWallpaperFactory *)self _processedImageForWallpaper:wallpaperCopy image:v10];
    goto LABEL_15;
  }

  if (variant != 2)
  {
    goto LABEL_12;
  }

  v11 = [(HUProcessedWallpaperFactory *)self _darkContentBlurredImageForWallpaper:wallpaperCopy image:v10];
LABEL_15:
  v12 = v11;
LABEL_16:

  return v12;
}

- (CGRect)_scaledCropRectForBounds:(CGRect)bounds wallpaper:(id)wallpaper image:(id)image
{
  height = bounds.size.height;
  width = bounds.size.width;
  wallpaperCopy = wallpaper;
  imageCopy = image;
  [imageCopy scale];
  v11 = v10;
  cropInfo = [wallpaperCopy cropInfo];

  if (cropInfo)
  {
    cropInfo2 = [wallpaperCopy cropInfo];
    [cropInfo2 scale];
    v15 = v14;

    cropInfo3 = [wallpaperCopy cropInfo];
    [cropInfo3 center];
    v18 = v17;
    v20 = v19;

    v11 = 1.0;
  }

  else
  {
    [imageCopy size];
    v15 = v21 / width;
    [imageCopy size];
    if (v15 >= v22 / height)
    {
      v15 = v22 / height;
    }

    [imageCopy size];
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

- (id)_croppedImageFromWallpaper:(id)wallpaper image:(id)image
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  [MEMORY[0x277D14D10] contentSizeForWallpaper];
  v9 = v8;
  v11 = v10;
  [imageCopy hf_sizeInScreenScale];
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

  if ([wallpaperCopy type] == 2 || objc_msgSend(wallpaperCopy, "type") == 3 || objc_msgSend(wallpaperCopy, "type") == 4 || objc_msgSend(wallpaperCopy, "type") == 5)
  {
    goto LABEL_14;
  }

  cropInfo = [wallpaperCopy cropInfo];
  if (cropInfo)
  {
  }

  else if (v17 == v13 && v16 == v15)
  {
LABEL_14:
    v21 = imageCopy;
    goto LABEL_15;
  }

  imageWithNormalizedOrientation = [imageCopy imageWithNormalizedOrientation];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v27 = v26;
  v42.width = v17;
  v42.height = v16;
  UIGraphicsBeginImageContextWithOptions(v42, 1, v27);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, v16);
  v29 = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(v29, 1.0, -1.0);
  [(HUProcessedWallpaperFactory *)self _scaledCropRectForBounds:wallpaperCopy wallpaper:imageCopy image:0.0, 0.0, v9, v11];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  cGImage = [imageWithNormalizedOrientation CGImage];
  v43.origin.x = v31;
  v43.origin.y = v33;
  v43.size.width = v35;
  v43.size.height = v37;
  v39 = CGImageCreateWithImageInRect(cGImage, v43);
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

- (id)_processedImageForWallpaper:(id)wallpaper image:(id)image
{
  v20[2] = *MEMORY[0x277D85DE8];
  wallpaperCopy = wallpaper;
  v7 = [(HUProcessedWallpaperFactory *)self _croppedImageFromWallpaper:wallpaperCopy image:image];
  if ([wallpaperCopy type] == 4 || objc_msgSend(wallpaperCopy, "type") == 5 || objc_msgSend(wallpaperCopy, "type") == 1 || objc_msgSend(wallpaperCopy, "type") == 6)
  {
    v8 = v7;
  }

  else
  {
    if ([wallpaperCopy type] == 2)
    {
      v10 = 0.04;
      v11 = 0.08;
    }

    else
    {
      v12 = [wallpaperCopy type] == 3;
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

- (id)_darkContentBlurredImageForWallpaper:(id)wallpaper image:(id)image
{
  imageCopy = image;
  [imageCopy scale];
  v6 = v5;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  if (v6 != v9)
  {
    [imageCopy scale];
    v11 = v10;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    NSLog(&cfstr_WallpaperProce.isa, v11, v13);
  }

  _defaultBackdropSettings = [objc_opt_class() _defaultBackdropSettings];
  [_defaultBackdropSettings setSaturationDeltaFactor:5.0];
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
  [_defaultBackdropSettings setColorTint:v15];

  [_defaultBackdropSettings setColorTintAlpha:0.8];
  v16 = [imageCopy _applyBackdropViewSettings:_defaultBackdropSettings];

  return v16;
}

- (id)_darkContentDarkModeBlurredImageForWallpaper:(id)wallpaper image:(id)image
{
  imageCopy = image;
  _defaultBackdropSettings = [objc_opt_class() _defaultBackdropSettings];
  [_defaultBackdropSettings setSaturationDeltaFactor:5.0];
  v6 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
  [_defaultBackdropSettings setColorTint:v6];

  [_defaultBackdropSettings setColorTintAlpha:0.8];
  v7 = [imageCopy _applyBackdropViewSettings:_defaultBackdropSettings];

  return v7;
}

- (id)_lightContentBlurredImageForWallpaper:(id)wallpaper image:(id)image
{
  v17[2] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  _defaultBackdropSettings = [objc_opt_class() _defaultBackdropSettings];
  [_defaultBackdropSettings setRenderingHint:1];
  [_defaultBackdropSettings setSaturationDeltaFactor:4.0];
  [_defaultBackdropSettings setColorTint:0];
  [_defaultBackdropSettings setColorTintAlpha:0.0];
  v7 = *MEMORY[0x277CDA5C0];
  v8 = [MEMORY[0x277D75348] colorWithWhite:0.305882353 alpha:0.3];
  v9 = [(HUProcessedWallpaperFactory *)self _layerWithCompositingFilterType:v7 color:v8];

  v10 = *MEMORY[0x277CDA5D8];
  v11 = [MEMORY[0x277D75348] colorWithWhite:0.396078431 alpha:0.32];
  v12 = [(HUProcessedWallpaperFactory *)self _layerWithCompositingFilterType:v10 color:v11];

  v17[0] = v9;
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v14 = [imageCopy _applyBackdropViewSettings:_defaultBackdropSettings];

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

- (id)_layerWithCompositingFilterType:(id)type color:(id)color
{
  v5 = MEMORY[0x277CD9ED0];
  colorCopy = color;
  typeCopy = type;
  layer = [v5 layer];
  v9 = [MEMORY[0x277CD9EA0] filterWithType:typeCopy];

  [layer setCompositingFilter:v9];
  cGColor = [colorCopy CGColor];

  [layer setBackgroundColor:cGColor];

  return layer;
}

- (id)_imageByApplyingLayerEffects:(id)effects toImage:(id)image
{
  v32 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  imageCopy = image;
  [imageCopy hf_sizeInScreenScale];
  v8 = v7;
  v10 = v9;
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  layer = [MEMORY[0x277CD9ED0] layer];
  [layer setContents:{objc_msgSend(imageCopy, "CGImage")}];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [layer setContentsScale:?];

  [layer setFrame:{v11, v12, v8, v10}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = effectsCopy;
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
        [layer addSublayer:v20];
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
  v26 = layer;
  v22 = layer;
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