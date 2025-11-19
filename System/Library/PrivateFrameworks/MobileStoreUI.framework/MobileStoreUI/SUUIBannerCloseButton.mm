@interface SUUIBannerCloseButton
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SUUIBannerCloseButton

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIBannerCloseButton *)self imageView];
  v6 = v5;
  v7 = 0.5;
  if (v3)
  {
    v7 = 1.0;
  }

  [v5 setAlpha:v7];

  v8.receiver = self;
  v8.super_class = SUUIBannerCloseButton;
  [(SUUIBannerCloseButton *)&v8 setHighlighted:v3];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SUUIBannerCloseButton;
  [(SUUIBannerCloseButton *)&v6 layoutSubviews];
  v3 = [(SUUIBannerCloseButton *)self imageView];
  v4 = [(SUUIBannerCloseButton *)self isHighlighted];
  v5 = 0.5;
  if (v4)
  {
    v5 = 1.0;
  }

  [v3 setAlpha:v5];
}

@end