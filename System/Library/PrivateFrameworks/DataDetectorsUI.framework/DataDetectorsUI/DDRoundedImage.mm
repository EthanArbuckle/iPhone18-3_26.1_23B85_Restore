@interface DDRoundedImage
- (void)layoutSubviews;
@end

@implementation DDRoundedImage

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = DDRoundedImage;
  [(DDRoundedImage *)&v6 layoutSubviews];
  if (self->_avatar)
  {
    [(DDRoundedImage *)self bounds];
    v4 = v3 * 0.5;
    v5 = [(DDRoundedImage *)self layer];
    [v5 setCornerRadius:v4];
  }
}

@end