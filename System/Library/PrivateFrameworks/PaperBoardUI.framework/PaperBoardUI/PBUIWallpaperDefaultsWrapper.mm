@interface PBUIWallpaperDefaultsWrapper
+ (id)homeScreenWrapperForLegacyDefaults:(id)defaults;
+ (id)lockScreenWrapperForLegacyDefaults:(id)defaults;
- (CGRect)cropRect;
- (PBUIWallpaperDefaultsWrapper)initWithWallpaperDefaultsDict:(id)dict;
- (id)wallpaperDefaultsDict;
@end

@implementation PBUIWallpaperDefaultsWrapper

- (PBUIWallpaperDefaultsWrapper)initWithWallpaperDefaultsDict:(id)dict
{
  dictCopy = dict;
  v44.receiver = self;
  v44.super_class = PBUIWallpaperDefaultsWrapper;
  v5 = [(PBUIWallpaperDefaultsWrapper *)&v44 init];
  if (v5)
  {
    v6 = [dictCopy objectForKey:@"SBWallpaperParallaxFactorKey"];

    if (v6)
    {
      v7 = [dictCopy objectForKey:@"SBWallpaperParallaxFactorKey"];
      [v7 floatValue];
      [(PBUIWallpaperDefaultsWrapper *)v5 setParallaxFactor:v8];
    }

    v9 = [dictCopy objectForKey:@"SBWallpaperZoomScaleKey"];

    if (v9)
    {
      v10 = [dictCopy objectForKey:@"SBWallpaperZoomScaleKey"];
      [v10 floatValue];
      [(PBUIWallpaperDefaultsWrapper *)v5 setZoomScale:v11];
    }

    v12 = [dictCopy objectForKey:@"SBWallpaperCropRectStringKey"];

    if (v12)
    {
      v13 = [dictCopy objectForKey:@"SBWallpaperCropRectStringKey"];
      v45 = CGRectFromString(v13);
      [(PBUIWallpaperDefaultsWrapper *)v5 setCropRect:v45.origin.x, v45.origin.y, v45.size.width, v45.size.height];
    }

    v14 = [dictCopy objectForKey:@"SBWallpaperSupportsCroppingKey"];

    if (v14)
    {
      v15 = [dictCopy objectForKey:@"SBWallpaperSupportsCroppingKey"];
      -[PBUIWallpaperDefaultsWrapper setSupportsCropping:](v5, "setSupportsCropping:", [v15 BOOLValue]);
    }

    v16 = [dictCopy objectForKey:@"SBWallpaperMagnifyEnabledKey"];

    if (v16)
    {
      v17 = [dictCopy objectForKey:@"SBWallpaperMagnifyEnabledKey"];
      -[PBUIWallpaperDefaultsWrapper setMagnifyEnabled:](v5, "setMagnifyEnabled:", [v17 BOOLValue]);
    }

    v18 = [dictCopy objectForKey:@"SBWallpaperPortraitKey"];

    if (v18)
    {
      v19 = [dictCopy objectForKey:@"SBWallpaperPortraitKey"];
      -[PBUIWallpaperDefaultsWrapper setPortrait:](v5, "setPortrait:", [v19 BOOLValue]);
    }

    v20 = [dictCopy objectForKey:@"SBWallpaperNameKey"];

    if (v20)
    {
      v21 = [dictCopy objectForKey:@"SBWallpaperNameKey"];
      [(PBUIWallpaperDefaultsWrapper *)v5 setWallpaperName:v21];
    }

    v22 = [dictCopy objectForKey:@"SBWallpaperImageHashDataKey"];

    if (v22)
    {
      v23 = [dictCopy objectForKey:@"SBWallpaperImageHashDataKey"];
      [(PBUIWallpaperDefaultsWrapper *)v5 setImageHashData:v23];
    }

    v24 = [dictCopy objectForKey:@"SBWallpaperHasVideoKey"];

    if (v24)
    {
      v25 = [dictCopy objectForKey:@"SBWallpaperHasVideoKey"];
      -[PBUIWallpaperDefaultsWrapper setHasVideo:](v5, "setHasVideo:", [v25 BOOLValue]);
    }

    v26 = [dictCopy objectForKey:@"SBWallpaperStillTimeInVideoKey"];

    if (v26)
    {
      v27 = [dictCopy objectForKey:@"SBWallpaperStillTimeInVideoKey"];
      [v27 floatValue];
      [(PBUIWallpaperDefaultsWrapper *)v5 setStillTimeInVideo:v28];
    }

    v29 = [dictCopy objectForKey:@"SBWallpaperColorDataKey"];

    if (v29)
    {
      v30 = [dictCopy objectForKey:@"SBWallpaperColorDataKey"];
      [(PBUIWallpaperDefaultsWrapper *)v5 setColorData:v30];
    }

    v31 = [dictCopy objectForKey:@"SBWallpaperColorNameKey"];

    if (v31)
    {
      v32 = [dictCopy objectForKey:@"SBWallpaperColorNameKey"];
      [(PBUIWallpaperDefaultsWrapper *)v5 setColorName:v32];
    }

    v33 = [dictCopy objectForKey:@"SBWallpaperGradientDataKey"];

    if (v33)
    {
      v34 = [dictCopy objectForKey:@"SBWallpaperGradientDataKey"];
      [(PBUIWallpaperDefaultsWrapper *)v5 setGradientData:v34];
    }

    v35 = [dictCopy objectForKey:@"kSBProceduralWallpaperHomeDefaultKey"];

    if (v35)
    {
      v36 = [dictCopy objectForKey:@"kSBProceduralWallpaperHomeDefaultKey"];
      [(PBUIWallpaperDefaultsWrapper *)v5 setWallpaperIdentifier:v36];
    }

    v37 = [dictCopy objectForKey:@"kSBProceduralWallpaperHomeOptionsKey"];

    if (v37)
    {
      v38 = [dictCopy objectForKey:@"kSBProceduralWallpaperHomeOptionsKey"];
      [(PBUIWallpaperDefaultsWrapper *)v5 setWallpaperOptions:v38];
    }

    v39 = [dictCopy objectForKey:@"kSBProceduralWallpaperHomeUserSetKey"];

    if (v39)
    {
      v40 = [dictCopy objectForKey:@"kSBProceduralWallpaperHomeUserSetKey"];
      -[PBUIWallpaperDefaultsWrapper setWallpaperWasUserSet:](v5, "setWallpaperWasUserSet:", [v40 BOOLValue]);
    }

    v41 = [dictCopy objectForKey:@"SBWallpaperWallpaperKitDataKey"];

    if (v41)
    {
      v42 = [dictCopy objectForKey:@"SBWallpaperWallpaperKitDataKey"];
      [(PBUIWallpaperDefaultsWrapper *)v5 setWallpaperKitData:v42];
    }
  }

  return v5;
}

+ (id)lockScreenWrapperForLegacyDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = objc_alloc_init(PBUIWallpaperDefaultsWrapper);
  [defaultsCopy lockScreenParallaxFactor];
  [(PBUIWallpaperDefaultsWrapper *)v4 setParallaxFactor:?];
  [defaultsCopy lockScreenZoomScale];
  [(PBUIWallpaperDefaultsWrapper *)v4 setZoomScale:?];
  lockScreenCropRectString = [defaultsCopy lockScreenCropRectString];
  v17 = CGRectFromString(lockScreenCropRectString);
  [(PBUIWallpaperDefaultsWrapper *)v4 setCropRect:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];

  -[PBUIWallpaperDefaultsWrapper setSupportsCropping:](v4, "setSupportsCropping:", [defaultsCopy lockScreenSupportsCropping]);
  -[PBUIWallpaperDefaultsWrapper setMagnifyEnabled:](v4, "setMagnifyEnabled:", [defaultsCopy lockScreenMagnifyEnabled]);
  -[PBUIWallpaperDefaultsWrapper setPortrait:](v4, "setPortrait:", [defaultsCopy lockScreenPortrait]);
  lockScreenWallpaperName = [defaultsCopy lockScreenWallpaperName];
  [(PBUIWallpaperDefaultsWrapper *)v4 setWallpaperName:lockScreenWallpaperName];

  lockScreenImageHashData = [defaultsCopy lockScreenImageHashData];
  [(PBUIWallpaperDefaultsWrapper *)v4 setImageHashData:lockScreenImageHashData];

  [defaultsCopy lockScreenStillTimeInVideo];
  [(PBUIWallpaperDefaultsWrapper *)v4 setHasVideo:v8 != 0.0];
  [defaultsCopy lockScreenStillTimeInVideo];
  [(PBUIWallpaperDefaultsWrapper *)v4 setStillTimeInVideo:?];
  lockScreenColorData = [defaultsCopy lockScreenColorData];
  [(PBUIWallpaperDefaultsWrapper *)v4 setColorData:lockScreenColorData];

  lockScreenColorName = [defaultsCopy lockScreenColorName];
  [(PBUIWallpaperDefaultsWrapper *)v4 setColorName:lockScreenColorName];

  lockScreenGradientData = [defaultsCopy lockScreenGradientData];
  [(PBUIWallpaperDefaultsWrapper *)v4 setGradientData:lockScreenGradientData];

  lockScreenWallpaperIdentifier = [defaultsCopy lockScreenWallpaperIdentifier];
  [(PBUIWallpaperDefaultsWrapper *)v4 setWallpaperIdentifier:lockScreenWallpaperIdentifier];

  lockScreenWallpaperOptions = [defaultsCopy lockScreenWallpaperOptions];
  [(PBUIWallpaperDefaultsWrapper *)v4 setWallpaperOptions:lockScreenWallpaperOptions];

  -[PBUIWallpaperDefaultsWrapper setWallpaperWasUserSet:](v4, "setWallpaperWasUserSet:", [defaultsCopy lockScreenWallpaperWasUserSet]);
  lockScreenWallpaperKitData = [defaultsCopy lockScreenWallpaperKitData];

  [(PBUIWallpaperDefaultsWrapper *)v4 setWallpaperKitData:lockScreenWallpaperKitData];

  return v4;
}

+ (id)homeScreenWrapperForLegacyDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = objc_alloc_init(PBUIWallpaperDefaultsWrapper);
  [defaultsCopy homeScreenParallaxFactor];
  [(PBUIWallpaperDefaultsWrapper *)v4 setParallaxFactor:?];
  [defaultsCopy homeScreenZoomScale];
  [(PBUIWallpaperDefaultsWrapper *)v4 setZoomScale:?];
  homeScreenCropRectString = [defaultsCopy homeScreenCropRectString];
  v16 = CGRectFromString(homeScreenCropRectString);
  [(PBUIWallpaperDefaultsWrapper *)v4 setCropRect:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];

  -[PBUIWallpaperDefaultsWrapper setSupportsCropping:](v4, "setSupportsCropping:", [defaultsCopy homeScreenSupportsCropping]);
  -[PBUIWallpaperDefaultsWrapper setMagnifyEnabled:](v4, "setMagnifyEnabled:", [defaultsCopy homeScreenMagnifyEnabled]);
  -[PBUIWallpaperDefaultsWrapper setPortrait:](v4, "setPortrait:", [defaultsCopy homeScreenPortrait]);
  homeScreenWallpaperName = [defaultsCopy homeScreenWallpaperName];
  [(PBUIWallpaperDefaultsWrapper *)v4 setWallpaperName:homeScreenWallpaperName];

  homeScreenImageHashData = [defaultsCopy homeScreenImageHashData];
  [(PBUIWallpaperDefaultsWrapper *)v4 setImageHashData:homeScreenImageHashData];

  homeScreenColorData = [defaultsCopy homeScreenColorData];
  [(PBUIWallpaperDefaultsWrapper *)v4 setColorData:homeScreenColorData];

  homeScreenColorName = [defaultsCopy homeScreenColorName];
  [(PBUIWallpaperDefaultsWrapper *)v4 setColorName:homeScreenColorName];

  homeScreenGradientData = [defaultsCopy homeScreenGradientData];
  [(PBUIWallpaperDefaultsWrapper *)v4 setGradientData:homeScreenGradientData];

  homeScreenWallpaperIdentifier = [defaultsCopy homeScreenWallpaperIdentifier];
  [(PBUIWallpaperDefaultsWrapper *)v4 setWallpaperIdentifier:homeScreenWallpaperIdentifier];

  homeScreenWallpaperOptions = [defaultsCopy homeScreenWallpaperOptions];
  [(PBUIWallpaperDefaultsWrapper *)v4 setWallpaperOptions:homeScreenWallpaperOptions];

  -[PBUIWallpaperDefaultsWrapper setWallpaperWasUserSet:](v4, "setWallpaperWasUserSet:", [defaultsCopy homeScreenWallpaperWasUserSet]);
  homeScreenWallpaperKitData = [defaultsCopy homeScreenWallpaperKitData];

  [(PBUIWallpaperDefaultsWrapper *)v4 setWallpaperKitData:homeScreenWallpaperKitData];

  return v4;
}

- (id)wallpaperDefaultsDict
{
  [(PBUIWallpaperDefaultsWrapper *)self cropRect];
  if (CGRectEqualToRect(v26, *MEMORY[0x277CBF3A0]))
  {
    v3 = 0;
  }

  else
  {
    [(PBUIWallpaperDefaultsWrapper *)self cropRect];
    v3 = NSStringFromCGRect(v27);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperDefaultsWrapper *)self parallaxFactor];
  v6 = [v5 numberWithDouble:?];
  [v4 setObject:v6 forKeyedSubscript:@"SBWallpaperParallaxFactorKey"];

  v7 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperDefaultsWrapper *)self zoomScale];
  v8 = [v7 numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:@"SBWallpaperZoomScaleKey"];

  [v4 setObject:v3 forKeyedSubscript:@"SBWallpaperCropRectStringKey"];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperDefaultsWrapper supportsCropping](self, "supportsCropping")}];
  [v4 setObject:v9 forKeyedSubscript:@"SBWallpaperSupportsCroppingKey"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperDefaultsWrapper magnifyEnabled](self, "magnifyEnabled")}];
  [v4 setObject:v10 forKeyedSubscript:@"SBWallpaperMagnifyEnabledKey"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperDefaultsWrapper portrait](self, "portrait")}];
  [v4 setObject:v11 forKeyedSubscript:@"SBWallpaperPortraitKey"];

  wallpaperName = [(PBUIWallpaperDefaultsWrapper *)self wallpaperName];
  [v4 setObject:wallpaperName forKeyedSubscript:@"SBWallpaperNameKey"];

  imageHashData = [(PBUIWallpaperDefaultsWrapper *)self imageHashData];
  [v4 setObject:imageHashData forKeyedSubscript:@"SBWallpaperImageHashDataKey"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperDefaultsWrapper hasVideo](self, "hasVideo")}];
  [v4 setObject:v14 forKeyedSubscript:@"SBWallpaperHasVideoKey"];

  v15 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperDefaultsWrapper *)self stillTimeInVideo];
  v16 = [v15 numberWithDouble:?];
  [v4 setObject:v16 forKeyedSubscript:@"SBWallpaperStillTimeInVideoKey"];

  colorData = [(PBUIWallpaperDefaultsWrapper *)self colorData];
  [v4 setObject:colorData forKeyedSubscript:@"SBWallpaperColorDataKey"];

  colorName = [(PBUIWallpaperDefaultsWrapper *)self colorName];
  [v4 setObject:colorName forKeyedSubscript:@"SBWallpaperColorNameKey"];

  gradientData = [(PBUIWallpaperDefaultsWrapper *)self gradientData];
  [v4 setObject:gradientData forKeyedSubscript:@"SBWallpaperGradientDataKey"];

  wallpaperIdentifier = [(PBUIWallpaperDefaultsWrapper *)self wallpaperIdentifier];
  [v4 setObject:wallpaperIdentifier forKeyedSubscript:@"kSBProceduralWallpaperHomeDefaultKey"];

  wallpaperOptions = [(PBUIWallpaperDefaultsWrapper *)self wallpaperOptions];
  [v4 setObject:wallpaperOptions forKeyedSubscript:@"kSBProceduralWallpaperHomeOptionsKey"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperDefaultsWrapper wallpaperWasUserSet](self, "wallpaperWasUserSet")}];
  [v4 setObject:v22 forKeyedSubscript:@"kSBProceduralWallpaperHomeUserSetKey"];

  wallpaperKitData = [(PBUIWallpaperDefaultsWrapper *)self wallpaperKitData];
  [v4 setObject:wallpaperKitData forKeyedSubscript:@"SBWallpaperWallpaperKitDataKey"];

  return v4;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end