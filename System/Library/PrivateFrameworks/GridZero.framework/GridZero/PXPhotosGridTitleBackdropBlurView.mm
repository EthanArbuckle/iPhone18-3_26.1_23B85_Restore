@interface PXPhotosGridTitleBackdropBlurView
- (CGRect)clippingRect;
- (PXPhotosGridTitleBackdropBlurView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
@end

@implementation PXPhotosGridTitleBackdropBlurView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  userData = self->_userData;
  if (userData != dataCopy)
  {
    v8 = dataCopy;
    if (![(NSString *)userData isEqualToString:dataCopy])
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->_userData;
      self->_userData = v6;

      [(UIVisualEffectView *)self->_visualEffectView _setGroupName:self->_userData];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)layoutSubviews
{
  [(PXPhotosGridTitleBackdropBlurView *)self bounds];
  [(UIVisualEffectView *)self->_visualEffectView setFrame:?];
  v3.receiver = self;
  v3.super_class = PXPhotosGridTitleBackdropBlurView;
  [(PXPhotosGridTitleBackdropBlurView *)&v3 layoutSubviews];
}

- (PXPhotosGridTitleBackdropBlurView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXPhotosGridTitleBackdropBlurView;
  v3 = [(PXPhotosGridTitleBackdropBlurView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:10];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
    visualEffectView = v3->_visualEffectView;
    v3->_visualEffectView = v5;

    [(PXPhotosGridTitleBackdropBlurView *)v3 addSubview:v3->_visualEffectView];
  }

  return v3;
}

@end