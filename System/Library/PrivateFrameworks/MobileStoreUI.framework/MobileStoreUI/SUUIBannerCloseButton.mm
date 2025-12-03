@interface SUUIBannerCloseButton
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SUUIBannerCloseButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  imageView = [(SUUIBannerCloseButton *)self imageView];
  v6 = imageView;
  v7 = 0.5;
  if (highlightedCopy)
  {
    v7 = 1.0;
  }

  [imageView setAlpha:v7];

  v8.receiver = self;
  v8.super_class = SUUIBannerCloseButton;
  [(SUUIBannerCloseButton *)&v8 setHighlighted:highlightedCopy];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SUUIBannerCloseButton;
  [(SUUIBannerCloseButton *)&v6 layoutSubviews];
  imageView = [(SUUIBannerCloseButton *)self imageView];
  isHighlighted = [(SUUIBannerCloseButton *)self isHighlighted];
  v5 = 0.5;
  if (isHighlighted)
  {
    v5 = 1.0;
  }

  [imageView setAlpha:v5];
}

@end