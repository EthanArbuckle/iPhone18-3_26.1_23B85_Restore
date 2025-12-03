@interface ICCollapsibleImageView
- (void)performSetup;
- (void)setImage:(id)image;
- (void)setTintColor:(id)color;
@end

@implementation ICCollapsibleImageView

- (void)performSetup
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [(ICCollapsibleImageView *)self frame];
  v4 = [v3 initWithFrame:?];
  [(ICCollapsibleImageView *)self setImageView:v4];

  imageView = [(ICCollapsibleImageView *)self imageView];
  [(ICCollapsibleBaseView *)self performSetUpWithContentView:imageView];

  tintColor = [(ICCollapsibleImageView *)self tintColor];
  imageView2 = [(ICCollapsibleImageView *)self imageView];
  [imageView2 setTintColor:tintColor];

  image = [(ICCollapsibleImageView *)self image];
  imageView3 = [(ICCollapsibleImageView *)self imageView];
  [imageView3 setImage:image];
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  imageView = [(ICCollapsibleImageView *)self imageView];
  [imageView setImage:imageCopy];
}

- (void)setTintColor:(id)color
{
  objc_storeStrong(&self->_tintColor, color);
  colorCopy = color;
  imageView = [(ICCollapsibleImageView *)self imageView];
  [imageView setTintColor:colorCopy];
}

@end