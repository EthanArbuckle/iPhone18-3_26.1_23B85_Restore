@interface PBUIGradientWallpaperView
- (BOOL)isDisplayingWallpaperWithConfiguration:(id)configuration forVariant:(int64_t)variant;
- (PBUIGradientWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options;
- (double)contrastInRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes;
- (id)_computeAverageColor;
@end

@implementation PBUIGradientWallpaperView

- (PBUIGradientWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v23.receiver = self;
  v23.super_class = PBUIGradientWallpaperView;
  height = [(PBUIWallpaperView *)&v23 initWithFrame:configurationCopy configuration:variant variant:group cacheGroup:delegate delegate:options options:x, y, width, height];
  if (height)
  {
    wallpaperGradient = [configurationCopy wallpaperGradient];
    wallpaperGradient = height->_wallpaperGradient;
    height->_wallpaperGradient = wallpaperGradient;

    layer = [(PBUIGradientWallpaperView *)height layer];
    [(PBUIWallpaperGradient *)height->_wallpaperGradient configureLayer:layer];
  }

  return height;
}

- (BOOL)isDisplayingWallpaperWithConfiguration:(id)configuration forVariant:(int64_t)variant
{
  configurationCopy = configuration;
  if ([configurationCopy wallpaperType] == 5)
  {
    wallpaperGradient = [configurationCopy wallpaperGradient];
    wallpaperGradient2 = [(PBUIGradientWallpaperView *)self wallpaperGradient];
    v8 = [wallpaperGradient2 isEqual:wallpaperGradient];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_computeAverageColor
{
  v26 = *MEMORY[0x277D85DE8];
  wallpaperGradient = [(PBUIGradientWallpaperView *)self wallpaperGradient];
  colors = [wallpaperGradient colors];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = 0u;
  v4 = [colors countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    v8 = 0.0;
    v17 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(colors);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v20 = 0.0;
        v19 = 0uLL;
        if ([v10 getRed:&v20 green:&v19.f64[1] blue:&v19 alpha:{0, *&v17}])
        {
          v8 = v8 + v20 * 255.0 * (v20 * 255.0);
          v11 = vmulq_f64(v19, v17);
          v18 = vaddq_f64(v18, vmulq_f64(v11, v11));
          ++v6;
        }
      }

      v5 = [colors countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
    v12 = v6;
    v13 = v18.f64[1];
    v14 = v18.f64[0];
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
    v13 = 0.0;
    v8 = 0.0;
  }

  v15 = [MEMORY[0x277D75348] colorWithRed:sqrt(v8 / v12) / 255.0 green:sqrt(v13 / v12) / 255.0 blue:sqrt(v14 / v12) / 255.0 alpha:1.0];

  return v15;
}

- (double)contrastInRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes
{
  if (boxes)
  {
    *boxes = 0.0;
  }

  if (betweenBoxes)
  {
    *betweenBoxes = 0.0;
  }

  return 0.0;
}

@end