@interface PBUIWallpaperImage
- (BOOL)isEqual:(id)equal;
- (PBUIWallpaperImage)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation wallpaperFileURL:(id)l;
- (PBUIWallpaperImage)initWithCoder:(id)coder;
- (PBUIWallpaperImage)initWithFlatColor:(id)color;
- (PBUIWallpaperImage)initWithFlatColor:(id)color size:(CGSize)size scale:(double)scale;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBUIWallpaperImage

- (PBUIWallpaperImage)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation wallpaperFileURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = PBUIWallpaperImage;
  v12 = [(PBUIWallpaperImage *)&v15 initWithCGImage:image scale:orientation orientation:scale];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wallpaperFileURL, l);
  }

  return v13;
}

- (PBUIWallpaperImage)initWithFlatColor:(id)color
{
  v4 = MEMORY[0x277D759A0];
  colorCopy = color;
  mainScreen = [v4 mainScreen];
  [mainScreen bounds];
  v8 = v7;
  v10 = v9;
  [mainScreen scale];
  v12 = v11;
  v13 = PBUIWallpaperImageWithFlatColor(colorCopy, v8, v10, v11);

  v14 = -[PBUIWallpaperImage initWithCGImage:scale:orientation:wallpaperFileURL:](self, "initWithCGImage:scale:orientation:wallpaperFileURL:", [v13 CGImage], 0, 0, v12);
  return v14;
}

- (PBUIWallpaperImage)initWithFlatColor:(id)color size:(CGSize)size scale:(double)scale
{
  v7 = PBUIWallpaperImageWithFlatColor(color, size.width, size.height, scale);
  v8 = -[PBUIWallpaperImage initWithCGImage:scale:orientation:wallpaperFileURL:](self, "initWithCGImage:scale:orientation:wallpaperFileURL:", [v7 CGImage], 0, 0, scale);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([equalCopy wallpaperFileURL], v5 = objc_claimAutoreleasedReturnValue(), self->_wallpaperFileURL | v5))
  {
    v6 = BSEqualObjects();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PBUIWallpaperImage;
    v6 = [(PBUIWallpaperImage *)&v8 isEqual:equalCopy];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PBUIWallpaperImage;
  coderCopy = coder;
  [(PBUIWallpaperImage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_wallpaperFileURL forKey:{@"wallpaperFileURL", v5.receiver, v5.super_class}];
}

- (PBUIWallpaperImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PBUIWallpaperImage;
  v5 = [(PBUIWallpaperImage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wallpaperFileURL"];
    wallpaperFileURL = v5->_wallpaperFileURL;
    v5->_wallpaperFileURL = v6;
  }

  return v5;
}

@end