@interface ICCollapsibleImageView
- (void)performSetup;
- (void)setImage:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation ICCollapsibleImageView

- (void)performSetup
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [(ICCollapsibleImageView *)self frame];
  v4 = [v3 initWithFrame:?];
  [(ICCollapsibleImageView *)self setImageView:v4];

  v5 = [(ICCollapsibleImageView *)self imageView];
  [(ICCollapsibleBaseView *)self performSetUpWithContentView:v5];

  v6 = [(ICCollapsibleImageView *)self tintColor];
  v7 = [(ICCollapsibleImageView *)self imageView];
  [v7 setTintColor:v6];

  v9 = [(ICCollapsibleImageView *)self image];
  v8 = [(ICCollapsibleImageView *)self imageView];
  [v8 setImage:v9];
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v6 = [(ICCollapsibleImageView *)self imageView];
  [v6 setImage:v5];
}

- (void)setTintColor:(id)a3
{
  objc_storeStrong(&self->_tintColor, a3);
  v5 = a3;
  v6 = [(ICCollapsibleImageView *)self imageView];
  [v6 setTintColor:v5];
}

@end