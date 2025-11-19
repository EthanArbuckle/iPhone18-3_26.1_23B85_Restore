@interface HFWallpaperEditCollection
- (HFWallpaperEditCollection)initWithWallpaper:(id)a3 originalImage:(id)a4 processedImage:(id)a5;
- (id)description;
@end

@implementation HFWallpaperEditCollection

- (HFWallpaperEditCollection)initWithWallpaper:(id)a3 originalImage:(id)a4 processedImage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HFWallpaperEditCollection;
  v12 = [(HFWallpaperEditCollection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_wallpaper, a3);
    objc_storeStrong(&v13->_originalImage, a4);
    objc_storeStrong(&v13->_processedImage, a5);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFWallpaperEditCollection *)self wallpaper];
  v7 = [v3 stringWithFormat:@"<%@: %p, wallpaper = %@>", v5, self, v6];

  return v7;
}

@end