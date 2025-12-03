@interface NTKCIconView
+ (double)size;
- (CGSize)intrinsicContentSize;
- (NTKCIconView)initWithFrame:(CGRect)frame;
- (NTKCIconView)initWithImage:(id)image;
- (void)_resizeCornerRadius;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
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

- (NTKCIconView)initWithFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  [objc_opt_class() size];
  v9.receiver = self;
  v9.super_class = NTKCIconView;
  v7 = [(NTKCIconView *)&v9 initWithFrame:x, y, v6, v6];
  [(NTKCIconView *)v7 setClipsToBounds:1];
  return v7;
}

- (NTKCIconView)initWithImage:(id)image
{
  v5.receiver = self;
  v5.super_class = NTKCIconView;
  v3 = [(NTKCIconView *)&v5 initWithImage:image];
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

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = NTKCIconView;
  [(NTKCIconView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(NTKCIconView *)self _resizeCornerRadius];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = NTKCIconView;
  [(NTKCIconView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(NTKCIconView *)self _resizeCornerRadius];
}

- (void)_resizeCornerRadius
{
  [(NTKCIconView *)self bounds];
  CGRectGetWidth(v7);
  UIFloorToViewScale();
  v4 = v3;
  layer = [(NTKCIconView *)self layer];
  [layer setCornerRadius:v4];
}

@end