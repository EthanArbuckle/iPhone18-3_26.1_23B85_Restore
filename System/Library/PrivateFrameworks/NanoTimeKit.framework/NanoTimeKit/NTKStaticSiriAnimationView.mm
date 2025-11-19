@interface NTKStaticSiriAnimationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKStaticSiriAnimationView)initWithFrame:(CGRect)a3 forDevice:(id)a4;
- (void)layoutSubviews;
@end

@implementation NTKStaticSiriAnimationView

- (NTKStaticSiriAnimationView)initWithFrame:(CGRect)a3 forDevice:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = NTKStaticSiriAnimationView;
  v11 = [(NTKStaticSiriAnimationView *)&v14 initWithFrame:x, y, width, height];
  if (v11)
  {
    objc_storeStrong(&v11->_device, a4);
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    NTKImageNamed(@"SiriHero");
  }

  return 0;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(CLKDevice *)self->_device sizeClass:a3.width];
  v4 = 33.0;
  if (!v3)
  {
    v4 = 28.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  [(NTKStaticSiriAnimationView *)self bounds];
  [(UIImageView *)self->_imageView setFrame:?];
  MEMORY[0x2318D8E70]([(NTKStaticSiriAnimationView *)self bounds]);
  imageView = self->_imageView;

  [(UIImageView *)imageView setCenter:?];
}

@end