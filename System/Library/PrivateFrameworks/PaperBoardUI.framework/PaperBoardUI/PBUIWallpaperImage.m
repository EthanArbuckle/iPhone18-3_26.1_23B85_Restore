@interface PBUIWallpaperImage
- (BOOL)isEqual:(id)a3;
- (PBUIWallpaperImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5 wallpaperFileURL:(id)a6;
- (PBUIWallpaperImage)initWithCoder:(id)a3;
- (PBUIWallpaperImage)initWithFlatColor:(id)a3;
- (PBUIWallpaperImage)initWithFlatColor:(id)a3 size:(CGSize)a4 scale:(double)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBUIWallpaperImage

- (PBUIWallpaperImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5 wallpaperFileURL:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PBUIWallpaperImage;
  v12 = [(PBUIWallpaperImage *)&v15 initWithCGImage:a3 scale:a5 orientation:a4];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wallpaperFileURL, a6);
  }

  return v13;
}

- (PBUIWallpaperImage)initWithFlatColor:(id)a3
{
  v4 = MEMORY[0x277D759A0];
  v5 = a3;
  v6 = [v4 mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  [v6 scale];
  v12 = v11;
  v13 = PBUIWallpaperImageWithFlatColor(v5, v8, v10, v11);

  v14 = -[PBUIWallpaperImage initWithCGImage:scale:orientation:wallpaperFileURL:](self, "initWithCGImage:scale:orientation:wallpaperFileURL:", [v13 CGImage], 0, 0, v12);
  return v14;
}

- (PBUIWallpaperImage)initWithFlatColor:(id)a3 size:(CGSize)a4 scale:(double)a5
{
  v7 = PBUIWallpaperImageWithFlatColor(a3, a4.width, a4.height, a5);
  v8 = -[PBUIWallpaperImage initWithCGImage:scale:orientation:wallpaperFileURL:](self, "initWithCGImage:scale:orientation:wallpaperFileURL:", [v7 CGImage], 0, 0, a5);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 wallpaperFileURL], v5 = objc_claimAutoreleasedReturnValue(), self->_wallpaperFileURL | v5))
  {
    v6 = BSEqualObjects();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PBUIWallpaperImage;
    v6 = [(PBUIWallpaperImage *)&v8 isEqual:v4];
  }

  return v6;
}

- (unint64_t)hash
{
  if (self->_wallpaperFileURL)
  {
    wallpaperFileURL = self->_wallpaperFileURL;

    return [(NSURL *)wallpaperFileURL hash];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PBUIWallpaperImage;
    return [(PBUIWallpaperImage *)&v6 hash];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PBUIWallpaperImage;
  v4 = a3;
  [(PBUIWallpaperImage *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_wallpaperFileURL forKey:{@"wallpaperFileURL", v5.receiver, v5.super_class}];
}

- (PBUIWallpaperImage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PBUIWallpaperImage;
  v5 = [(PBUIWallpaperImage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wallpaperFileURL"];
    wallpaperFileURL = v5->_wallpaperFileURL;
    v5->_wallpaperFileURL = v6;
  }

  return v5;
}

@end