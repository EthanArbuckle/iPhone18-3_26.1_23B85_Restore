@interface PBUIColorWallpaperView
- (BOOL)isDisplayingWallpaperWithConfiguration:(id)configuration forVariant:(int64_t)variant;
- (PBUIColorWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options;
- (double)contrastInRect:(CGRect)rect contrastWithinBoxes:(double *)boxes contrastBetweenBoxes:(double *)betweenBoxes;
- (id)snapshotImage;
@end

@implementation PBUIColorWallpaperView

- (PBUIColorWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = PBUIColorWallpaperView;
  height = [(PBUIWallpaperView *)&v21 initWithFrame:configurationCopy configuration:variant variant:group cacheGroup:delegate delegate:options options:x, y, width, height];
  if (height)
  {
    wallpaperColor = [configurationCopy wallpaperColor];
    [(PBUIColorWallpaperView *)height setBackgroundColor:wallpaperColor];
  }

  return height;
}

- (BOOL)isDisplayingWallpaperWithConfiguration:(id)configuration forVariant:(int64_t)variant
{
  configurationCopy = configuration;
  if ([configurationCopy wallpaperType] == 4)
  {
    wallpaperColor = [configurationCopy wallpaperColor];
    wallpaperColor2 = [(PBUIColorWallpaperView *)self wallpaperColor];
    v8 = [wallpaperColor2 isEqual:wallpaperColor];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

- (id)snapshotImage
{
  cachedSnapshotImage = [(PBUIColorWallpaperView *)self cachedSnapshotImage];
  if (!cachedSnapshotImage)
  {
    wallpaperColor = [(PBUIColorWallpaperView *)self wallpaperColor];
    v5 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{20.0, 20.0}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__PBUIColorWallpaperView_snapshotImage__block_invoke;
    v8[3] = &unk_278363F20;
    v9 = wallpaperColor;
    v6 = wallpaperColor;
    cachedSnapshotImage = [v5 imageWithActions:v8];
    [(PBUIColorWallpaperView *)self setCachedSnapshotImage:cachedSnapshotImage];
  }

  return cachedSnapshotImage;
}

void __39__PBUIColorWallpaperView_snapshotImage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 set];
  [v3 fillRect:{0.0, 0.0, 20.0, 20.0}];
}

@end