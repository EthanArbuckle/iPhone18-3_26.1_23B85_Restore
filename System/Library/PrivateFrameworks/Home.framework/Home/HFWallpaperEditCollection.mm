@interface HFWallpaperEditCollection
- (HFWallpaperEditCollection)initWithWallpaper:(id)wallpaper originalImage:(id)image processedImage:(id)processedImage;
- (id)description;
@end

@implementation HFWallpaperEditCollection

- (HFWallpaperEditCollection)initWithWallpaper:(id)wallpaper originalImage:(id)image processedImage:(id)processedImage
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  processedImageCopy = processedImage;
  v15.receiver = self;
  v15.super_class = HFWallpaperEditCollection;
  v12 = [(HFWallpaperEditCollection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wallpaper, wallpaper);
    objc_storeStrong(&v13->_originalImage, image);
    objc_storeStrong(&v13->_processedImage, processedImage);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  wallpaper = [(HFWallpaperEditCollection *)self wallpaper];
  v7 = [v3 stringWithFormat:@"<%@: %p, wallpaper = %@>", v5, self, wallpaper];

  return v7;
}

@end