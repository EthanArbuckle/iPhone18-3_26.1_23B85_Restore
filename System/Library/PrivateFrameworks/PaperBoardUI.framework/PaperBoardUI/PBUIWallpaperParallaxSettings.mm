@interface PBUIWallpaperParallaxSettings
+ (CGSize)_requiredOverhangSizeForCurrentDevice;
+ (CGSize)_requiredOverhangSizeForDeviceType:(int64_t)type;
+ (CGSize)bestWallpaperSizeForParallaxFactor:(double)factor;
+ (CGSize)bestWallpaperSizeForParallaxFactor:(double)factor portrait:(BOOL)portrait;
+ (CGSize)bestWallpaperSizeForWallpaperSize:(CGSize)size deviceType:(int64_t)type parallaxFactor:(double)factor portrait:(BOOL)portrait;
+ (CGSize)minimumWallpaperSizeForCurrentDevice;
+ (CGSize)minimumWallpaperSizeForWallpaperSize:(CGSize)size deviceType:(int64_t)type;
+ (CGSize)overhangSizeForCurrentDevice;
+ (CGSize)overhangSizeForDeviceType:(int64_t)type;
+ (double)minimumZoomScaleForCurrentDeviceForWallpaperSize:(CGSize)size parallaxFactor:(double)factor;
+ (double)minimumZoomScaleForWallpaperSize:(CGSize)size parallaxFactor:(double)factor deviceType:(int64_t)type;
+ (id)settingsControllerModule;
+ (int64_t)_currentDeviceType;
- (void)setDefaultValues;
@end

@implementation PBUIWallpaperParallaxSettings

+ (int64_t)_currentDeviceType
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

+ (CGSize)_requiredOverhangSizeForCurrentDevice
{
  _currentDeviceType = [self _currentDeviceType];

  [self _requiredOverhangSizeForDeviceType:_currentDeviceType];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)_requiredOverhangSizeForDeviceType:(int64_t)type
{
  if (type)
  {
    if (type == 1)
    {
      v3 = 78.0;
      v4 = 119.0;
    }

    else
    {
      v3 = *MEMORY[0x277CBF3A8];
      v4 = *(MEMORY[0x277CBF3A8] + 8);
    }
  }

  else
  {
    v3 = 26.0;
    v4 = 64.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = PBUIWallpaperParallaxSettings;
  [(PBUIParallaxSettings *)&v5 setDefaultValues];
  [objc_opt_class() _requiredOverhangSizeForCurrentDevice];
  v4 = v3;
  [(PBUIWallpaperParallaxSettings *)self setOverhangX:?];
  [(PBUIWallpaperParallaxSettings *)self setOverhangY:v4];
  [(PBUIWallpaperParallaxSettings *)self setPerspectiveTransform:0.2];
}

+ (CGSize)bestWallpaperSizeForParallaxFactor:(double)factor
{
  v5 = [*MEMORY[0x277D76620] activeInterfaceOrientation] != 0;

  [self bestWallpaperSizeForParallaxFactor:v5 portrait:factor];
  result.height = v7;
  result.width = v6;
  return result;
}

+ (CGSize)bestWallpaperSizeForParallaxFactor:(double)factor portrait:(BOOL)portrait
{
  portraitCopy = portrait;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v9 = v8;
  v11 = v10;

  _currentDeviceType = [self _currentDeviceType];

  [self bestWallpaperSizeForWallpaperSize:_currentDeviceType deviceType:portraitCopy parallaxFactor:v9 portrait:{v11, factor}];
  result.height = v14;
  result.width = v13;
  return result;
}

+ (CGSize)bestWallpaperSizeForWallpaperSize:(CGSize)size deviceType:(int64_t)type parallaxFactor:(double)factor portrait:(BOOL)portrait
{
  if (size.width >= size.height)
  {
    width = size.width;
  }

  else
  {
    width = size.height;
  }

  [self _requiredOverhangSizeForDeviceType:{type, portrait}];
  v9 = width + (v8 + v8) * factor;
  v11 = width + (v10 + v10) * factor;
  result.height = v11;
  result.width = v9;
  return result;
}

+ (CGSize)minimumWallpaperSizeForCurrentDevice
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;

  if ([MEMORY[0x277D75D18] _motionEffectsEnabled])
  {
    [self _requiredOverhangSizeForCurrentDevice];
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v10 = v5 + v8 * 2.0;
  v11 = v7 + v9 * 2.0;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (CGSize)minimumWallpaperSizeForWallpaperSize:(CGSize)size deviceType:(int64_t)type
{
  height = size.height;
  width = size.width;
  if ([MEMORY[0x277D75D18] _motionEffectsEnabled])
  {
    [self _requiredOverhangSizeForDeviceType:type];
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v10 = width + v8 * 2.0;
  v11 = height + v9 * 2.0;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (CGSize)overhangSizeForCurrentDevice
{
  if ([MEMORY[0x277D75D18] _motionEffectsEnabled])
  {
    [self _requiredOverhangSizeForCurrentDevice];
  }

  else
  {
    v3 = *MEMORY[0x277CBF3A8];
    v4 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)overhangSizeForDeviceType:(int64_t)type
{
  if ([MEMORY[0x277D75D18] _motionEffectsEnabled])
  {
    [self _requiredOverhangSizeForDeviceType:type];
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

+ (double)minimumZoomScaleForWallpaperSize:(CGSize)size parallaxFactor:(double)factor deviceType:(int64_t)type
{
  width = size.width;
  result = 1.0;
  if (factor != 0.0)
  {
    [self overhangSizeForDeviceType:{type, 1.0, size.height}];
    return 1.0 / ((width - v7 - v7) / width);
  }

  return result;
}

+ (double)minimumZoomScaleForCurrentDeviceForWallpaperSize:(CGSize)size parallaxFactor:(double)factor
{
  height = size.height;
  width = size.width;
  _currentDeviceType = [self _currentDeviceType];

  [self minimumZoomScaleForWallpaperSize:_currentDeviceType parallaxFactor:width deviceType:{height, factor}];
  return result;
}

+ (id)settingsControllerModule
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D431F0] rowWithTitle:@"Horizontal overhang (pts)" valueKeyPath:@"overhangX"];
  v4 = [v3 precision:0];
  v19[0] = v4;
  v5 = [MEMORY[0x277D431F0] rowWithTitle:@"Vertical overhang (pts)" valueKeyPath:@"overhangY"];
  v6 = [v5 precision:0];
  v19[1] = v6;
  v7 = [MEMORY[0x277D43298] rowWithTitle:@"Perspective transform" valueKeyPath:@"perspectiveTransform"];
  v19[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];

  v9 = [MEMORY[0x277D43218] sectionWithRows:v8];
  v10 = MEMORY[0x277D43218];
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___PBUIWallpaperParallaxSettings;
  v11 = objc_msgSendSuper2(&v17, sel_settingsControllerModule);
  v12 = [v10 submoduleWithModule:v11 childSettingsKeyPath:0];

  v13 = MEMORY[0x277D43218];
  v18[0] = v9;
  v18[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v15 = [v13 moduleWithTitle:@"Wallpaper" contents:v14];

  return v15;
}

@end