@interface NTKStaticSiriAnimationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKStaticSiriAnimationView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (void)layoutSubviews;
@end

@implementation NTKStaticSiriAnimationView

- (NTKStaticSiriAnimationView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKStaticSiriAnimationView;
  height = [(NTKStaticSiriAnimationView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    NTKImageNamed(@"SiriHero");
  }

  return 0;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(CLKDevice *)self->_device sizeClass:fits.width];
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