@interface PBUIWallpaperEffectImageRequestActionImageURLResponse
- (NSURL)imageURL;
- (PBUIWallpaperEffectImageRequestActionImageURLResponse)initWithActualStyle:(int64_t)style size:(CGSize)size imageURL:(id)l;
@end

@implementation PBUIWallpaperEffectImageRequestActionImageURLResponse

- (PBUIWallpaperEffectImageRequestActionImageURLResponse)initWithActualStyle:(int64_t)style size:(CGSize)size imageURL:(id)l
{
  height = size.height;
  width = size.width;
  v9 = MEMORY[0x277CF0C80];
  lCopy = l;
  v11 = objc_alloc_init(v9);
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [v11 setObject:v12 forSetting:1];

  v13 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  [v11 setObject:v13 forSetting:2];

  filePathURL = [lCopy filePathURL];

  path = [filePathURL path];
  [v11 setObject:path forSetting:3];

  v18.receiver = self;
  v18.super_class = PBUIWallpaperEffectImageRequestActionImageURLResponse;
  v16 = [(PBUIWallpaperEffectImageRequestActionImageURLResponse *)&v18 initWithInfo:v11 error:0];

  return v16;
}

- (NSURL)imageURL
{
  info = [(PBUIWallpaperEffectImageRequestActionImageURLResponse *)self info];
  v3 = [info objectForSetting:3];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end