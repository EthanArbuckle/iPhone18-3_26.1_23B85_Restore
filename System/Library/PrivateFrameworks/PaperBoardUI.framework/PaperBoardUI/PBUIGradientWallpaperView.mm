@interface PBUIGradientWallpaperView
- (BOOL)isDisplayingWallpaperWithConfiguration:(id)a3 forVariant:(int64_t)a4;
- (PBUIGradientWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8;
- (double)contrastInRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5;
- (id)_computeAverageColor;
@end

@implementation PBUIGradientWallpaperView

- (PBUIGradientWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v23.receiver = self;
  v23.super_class = PBUIGradientWallpaperView;
  v18 = [(PBUIWallpaperView *)&v23 initWithFrame:v17 configuration:a5 variant:a6 cacheGroup:a7 delegate:a8 options:x, y, width, height];
  if (v18)
  {
    v19 = [v17 wallpaperGradient];
    wallpaperGradient = v18->_wallpaperGradient;
    v18->_wallpaperGradient = v19;

    v21 = [(PBUIGradientWallpaperView *)v18 layer];
    [(PBUIWallpaperGradient *)v18->_wallpaperGradient configureLayer:v21];
  }

  return v18;
}

- (BOOL)isDisplayingWallpaperWithConfiguration:(id)a3 forVariant:(int64_t)a4
{
  v5 = a3;
  if ([v5 wallpaperType] == 5)
  {
    v6 = [v5 wallpaperGradient];
    v7 = [(PBUIGradientWallpaperView *)self wallpaperGradient];
    v8 = [v7 isEqual:v6];
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
  v2 = [(PBUIGradientWallpaperView *)self wallpaperGradient];
  v3 = [v2 colors];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (double)contrastInRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5
{
  if (a4)
  {
    *a4 = 0.0;
  }

  if (a5)
  {
    *a5 = 0.0;
  }

  return 0.0;
}

@end