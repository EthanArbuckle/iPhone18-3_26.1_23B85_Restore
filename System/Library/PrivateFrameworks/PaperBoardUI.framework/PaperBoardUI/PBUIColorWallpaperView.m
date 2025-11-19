@interface PBUIColorWallpaperView
- (BOOL)isDisplayingWallpaperWithConfiguration:(id)a3 forVariant:(int64_t)a4;
- (PBUIColorWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8;
- (double)contrastInRect:(CGRect)a3 contrastWithinBoxes:(double *)a4 contrastBetweenBoxes:(double *)a5;
- (id)snapshotImage;
@end

@implementation PBUIColorWallpaperView

- (PBUIColorWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v21.receiver = self;
  v21.super_class = PBUIColorWallpaperView;
  v18 = [(PBUIWallpaperView *)&v21 initWithFrame:v17 configuration:a5 variant:a6 cacheGroup:a7 delegate:a8 options:x, y, width, height];
  if (v18)
  {
    v19 = [v17 wallpaperColor];
    [(PBUIColorWallpaperView *)v18 setBackgroundColor:v19];
  }

  return v18;
}

- (BOOL)isDisplayingWallpaperWithConfiguration:(id)a3 forVariant:(int64_t)a4
{
  v5 = a3;
  if ([v5 wallpaperType] == 4)
  {
    v6 = [v5 wallpaperColor];
    v7 = [(PBUIColorWallpaperView *)self wallpaperColor];
    v8 = [v7 isEqual:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

- (id)snapshotImage
{
  v3 = [(PBUIColorWallpaperView *)self cachedSnapshotImage];
  if (!v3)
  {
    v4 = [(PBUIColorWallpaperView *)self wallpaperColor];
    v5 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{20.0, 20.0}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__PBUIColorWallpaperView_snapshotImage__block_invoke;
    v8[3] = &unk_278363F20;
    v9 = v4;
    v6 = v4;
    v3 = [v5 imageWithActions:v8];
    [(PBUIColorWallpaperView *)self setCachedSnapshotImage:v3];
  }

  return v3;
}

void __39__PBUIColorWallpaperView_snapshotImage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 set];
  [v3 fillRect:{0.0, 0.0, 20.0, 20.0}];
}

@end