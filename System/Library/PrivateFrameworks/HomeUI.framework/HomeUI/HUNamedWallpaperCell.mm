@interface HUNamedWallpaperCell
- (HUNamedWallpaperCell)initWithFrame:(CGRect)a3;
- (UIImage)image;
- (void)setContentMode:(int64_t)a3;
- (void)setImage:(id)a3;
@end

@implementation HUNamedWallpaperCell

- (HUNamedWallpaperCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = HUNamedWallpaperCell;
  v3 = [(HUNamedWallpaperCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [(HUNamedWallpaperCell *)v3 contentView];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setAutoresizingMask:18];
    [(UIImageView *)v3->_imageView setContentMode:0];
    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    v8 = [(UIImageView *)v3->_imageView layer];
    [v8 setCornerRadius:4.0];

    v9 = [(HUNamedWallpaperCell *)v3 contentView];
    [v9 addSubview:v3->_imageView];
  }

  return v3;
}

- (UIImage)image
{
  v2 = [(HUNamedWallpaperCell *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(HUNamedWallpaperCell *)self imageView];
  [v5 setImage:v4];
}

- (void)setContentMode:(int64_t)a3
{
  self->_contentMode = a3;
  v4 = [(HUNamedWallpaperCell *)self imageView];
  [v4 setContentMode:a3];
}

@end