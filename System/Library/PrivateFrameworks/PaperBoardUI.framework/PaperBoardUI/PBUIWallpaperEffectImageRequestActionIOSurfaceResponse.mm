@interface PBUIWallpaperEffectImageRequestActionIOSurfaceResponse
- (IOSurface)ioSurface;
- (PBUIWallpaperEffectImageRequestActionIOSurfaceResponse)initWithActualStyle:(int64_t)style size:(CGSize)size ioSurface:(id)surface;
@end

@implementation PBUIWallpaperEffectImageRequestActionIOSurfaceResponse

- (PBUIWallpaperEffectImageRequestActionIOSurfaceResponse)initWithActualStyle:(int64_t)style size:(CGSize)size ioSurface:(id)surface
{
  height = size.height;
  width = size.width;
  v9 = MEMORY[0x277CF0C80];
  surfaceCopy = surface;
  v11 = objc_alloc_init(v9);
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [v11 setObject:v12 forSetting:1];

  v13 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  [v11 setObject:v13 forSetting:2];

  XPCObject = IOSurfaceCreateXPCObject(surfaceCopy);
  [v11 setObject:XPCObject forSetting:4];
  v17.receiver = self;
  v17.super_class = PBUIWallpaperEffectImageRequestActionIOSurfaceResponse;
  v15 = [(PBUIWallpaperEffectImageRequestActionIOSurfaceResponse *)&v17 initWithInfo:v11 error:0];

  return v15;
}

- (IOSurface)ioSurface
{
  info = [(PBUIWallpaperEffectImageRequestActionIOSurfaceResponse *)self info];
  v3 = [info objectForSetting:4];

  v4 = IOSurfaceLookupFromXPCObject(v3);

  return v4;
}

@end