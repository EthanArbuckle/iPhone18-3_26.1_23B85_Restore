@interface PBUIWallpaperParallaxSettings
+ (CGSize)_requiredOverhangSizeForCurrentDevice;
+ (CGSize)_requiredOverhangSizeForDeviceType:(int64_t)a3;
+ (CGSize)bestWallpaperSizeForParallaxFactor:(double)a3;
+ (CGSize)bestWallpaperSizeForParallaxFactor:(double)a3 portrait:(BOOL)a4;
+ (CGSize)bestWallpaperSizeForWallpaperSize:(CGSize)a3 deviceType:(int64_t)a4 parallaxFactor:(double)a5 portrait:(BOOL)a6;
+ (CGSize)minimumWallpaperSizeForCurrentDevice;
+ (CGSize)minimumWallpaperSizeForWallpaperSize:(CGSize)a3 deviceType:(int64_t)a4;
+ (CGSize)overhangSizeForCurrentDevice;
+ (CGSize)overhangSizeForDeviceType:(int64_t)a3;
+ (double)minimumZoomScaleForCurrentDeviceForWallpaperSize:(CGSize)a3 parallaxFactor:(double)a4;
+ (double)minimumZoomScaleForWallpaperSize:(CGSize)a3 parallaxFactor:(double)a4 deviceType:(int64_t)a5;
+ (id)settingsControllerModule;
+ (int64_t)_currentDeviceType;
- (void)setDefaultValues;
@end

@implementation PBUIWallpaperParallaxSettings

+ (int64_t)_currentDeviceType
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

+ (CGSize)_requiredOverhangSizeForCurrentDevice
{
  v3 = [a1 _currentDeviceType];

  [a1 _requiredOverhangSizeForDeviceType:v3];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)_requiredOverhangSizeForDeviceType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
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

+ (CGSize)bestWallpaperSizeForParallaxFactor:(double)a3
{
  v5 = [*MEMORY[0x277D76620] activeInterfaceOrientation] != 0;

  [a1 bestWallpaperSizeForParallaxFactor:v5 portrait:a3];
  result.height = v7;
  result.width = v6;
  return result;
}

+ (CGSize)bestWallpaperSizeForParallaxFactor:(double)a3 portrait:(BOOL)a4
{
  v4 = a4;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 _referenceBounds];
  v9 = v8;
  v11 = v10;

  v12 = [a1 _currentDeviceType];

  [a1 bestWallpaperSizeForWallpaperSize:v12 deviceType:v4 parallaxFactor:v9 portrait:{v11, a3}];
  result.height = v14;
  result.width = v13;
  return result;
}

+ (CGSize)bestWallpaperSizeForWallpaperSize:(CGSize)a3 deviceType:(int64_t)a4 parallaxFactor:(double)a5 portrait:(BOOL)a6
{
  if (a3.width >= a3.height)
  {
    width = a3.width;
  }

  else
  {
    width = a3.height;
  }

  [a1 _requiredOverhangSizeForDeviceType:{a4, a6}];
  v9 = width + (v8 + v8) * a5;
  v11 = width + (v10 + v10) * a5;
  result.height = v11;
  result.width = v9;
  return result;
}

+ (CGSize)minimumWallpaperSizeForCurrentDevice
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if ([MEMORY[0x277D75D18] _motionEffectsEnabled])
  {
    [a1 _requiredOverhangSizeForCurrentDevice];
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

+ (CGSize)minimumWallpaperSizeForWallpaperSize:(CGSize)a3 deviceType:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  if ([MEMORY[0x277D75D18] _motionEffectsEnabled])
  {
    [a1 _requiredOverhangSizeForDeviceType:a4];
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
    [a1 _requiredOverhangSizeForCurrentDevice];
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

+ (CGSize)overhangSizeForDeviceType:(int64_t)a3
{
  if ([MEMORY[0x277D75D18] _motionEffectsEnabled])
  {
    [a1 _requiredOverhangSizeForDeviceType:a3];
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

+ (double)minimumZoomScaleForWallpaperSize:(CGSize)a3 parallaxFactor:(double)a4 deviceType:(int64_t)a5
{
  width = a3.width;
  result = 1.0;
  if (a4 != 0.0)
  {
    [a1 overhangSizeForDeviceType:{a5, 1.0, a3.height}];
    return 1.0 / ((width - v7 - v7) / width);
  }

  return result;
}

+ (double)minimumZoomScaleForCurrentDeviceForWallpaperSize:(CGSize)a3 parallaxFactor:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [a1 _currentDeviceType];

  [a1 minimumZoomScaleForWallpaperSize:v8 parallaxFactor:width deviceType:{height, a4}];
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
  v17.receiver = a1;
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