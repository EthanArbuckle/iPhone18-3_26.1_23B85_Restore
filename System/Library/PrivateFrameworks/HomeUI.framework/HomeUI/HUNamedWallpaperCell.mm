@interface HUNamedWallpaperCell
- (HUNamedWallpaperCell)initWithFrame:(CGRect)frame;
- (UIImage)image;
- (void)setContentMode:(int64_t)mode;
- (void)setImage:(id)image;
@end

@implementation HUNamedWallpaperCell

- (HUNamedWallpaperCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = HUNamedWallpaperCell;
  v3 = [(HUNamedWallpaperCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    contentView = [(HUNamedWallpaperCell *)v3 contentView];
    [contentView bounds];
    v6 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setAutoresizingMask:18];
    [(UIImageView *)v3->_imageView setContentMode:0];
    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    layer = [(UIImageView *)v3->_imageView layer];
    [layer setCornerRadius:4.0];

    contentView2 = [(HUNamedWallpaperCell *)v3 contentView];
    [contentView2 addSubview:v3->_imageView];
  }

  return v3;
}

- (UIImage)image
{
  imageView = [(HUNamedWallpaperCell *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(HUNamedWallpaperCell *)self imageView];
  [imageView setImage:imageCopy];
}

- (void)setContentMode:(int64_t)mode
{
  self->_contentMode = mode;
  imageView = [(HUNamedWallpaperCell *)self imageView];
  [imageView setContentMode:mode];
}

@end