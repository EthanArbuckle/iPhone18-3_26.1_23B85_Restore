@interface NTKCIconView
+ (double)size;
- (CGSize)intrinsicContentSize;
- (NTKCIconView)initWithFrame:(CGRect)a3;
- (NTKCIconView)initWithImage:(id)a3;
- (void)_resizeCornerRadius;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation NTKCIconView

+ (double)size
{
  if (size_onceToken != -1)
  {
    +[NTKCIconView size];
  }

  return *&size_size;
}

uint64_t __20__NTKCIconView_size__block_invoke()
{
  result = NTKCScreenStyle();
  v1 = 26.6666667;
  if (result != 1)
  {
    v1 = 24.0;
  }

  size_size = *&v1;
  return result;
}

- (NTKCIconView)initWithFrame:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  [objc_opt_class() size];
  v9.receiver = self;
  v9.super_class = NTKCIconView;
  v7 = [(NTKCIconView *)&v9 initWithFrame:x, y, v6, v6];
  [(NTKCIconView *)v7 setClipsToBounds:1];
  return v7;
}

- (NTKCIconView)initWithImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKCIconView;
  v3 = [(NTKCIconView *)&v5 initWithImage:a3];
  [(NTKCIconView *)v3 setClipsToBounds:1];
  return v3;
}

- (CGSize)intrinsicContentSize
{
  [objc_opt_class() size];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NTKCIconView;
  [(NTKCIconView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(NTKCIconView *)self _resizeCornerRadius];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NTKCIconView;
  [(NTKCIconView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(NTKCIconView *)self _resizeCornerRadius];
}

- (void)_resizeCornerRadius
{
  [(NTKCIconView *)self bounds];
  CGRectGetWidth(v7);
  UIFloorToViewScale();
  v4 = v3;
  v5 = [(NTKCIconView *)self layer];
  [v5 setCornerRadius:v4];
}

@end