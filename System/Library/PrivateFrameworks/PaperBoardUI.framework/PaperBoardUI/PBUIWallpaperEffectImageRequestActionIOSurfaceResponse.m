@interface PBUIWallpaperEffectImageRequestActionIOSurfaceResponse
- (IOSurface)ioSurface;
- (PBUIWallpaperEffectImageRequestActionIOSurfaceResponse)initWithActualStyle:(int64_t)a3 size:(CGSize)a4 ioSurface:(id)a5;
@end

@implementation PBUIWallpaperEffectImageRequestActionIOSurfaceResponse

- (PBUIWallpaperEffectImageRequestActionIOSurfaceResponse)initWithActualStyle:(int64_t)a3 size:(CGSize)a4 ioSurface:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = MEMORY[0x277CF0C80];
  v10 = a5;
  v11 = objc_alloc_init(v9);
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v11 setObject:v12 forSetting:1];

  v13 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  [v11 setObject:v13 forSetting:2];

  XPCObject = IOSurfaceCreateXPCObject(v10);
  [v11 setObject:XPCObject forSetting:4];
  v17.receiver = self;
  v17.super_class = PBUIWallpaperEffectImageRequestActionIOSurfaceResponse;
  v15 = [(PBUIWallpaperEffectImageRequestActionIOSurfaceResponse *)&v17 initWithInfo:v11 error:0];

  return v15;
}

- (IOSurface)ioSurface
{
  v2 = [(PBUIWallpaperEffectImageRequestActionIOSurfaceResponse *)self info];
  v3 = [v2 objectForSetting:4];

  v4 = IOSurfaceLookupFromXPCObject(v3);

  return v4;
}

@end