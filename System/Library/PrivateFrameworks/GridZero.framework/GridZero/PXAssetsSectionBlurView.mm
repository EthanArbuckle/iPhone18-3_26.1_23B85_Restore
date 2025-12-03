@interface PXAssetsSectionBlurView
- (CGRect)clippingRect;
- (PXAssetsSectionBlurView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
@end

@implementation PXAssetsSectionBlurView

- (CGRect)clippingRect
{
  x = self->clippingRect.origin.x;
  y = self->clippingRect.origin.y;
  width = self->clippingRect.size.width;
  height = self->clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      px_descriptionForAssertionMessage = [(NSCopying *)dataCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionBlurView.m" lineNumber:53 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v18, px_descriptionForAssertionMessage}];
    }
  }

  if (self->_userData != dataCopy)
  {
    v5 = [(NSCopying *)dataCopy copy];
    userData = self->_userData;
    self->_userData = v5;

    [(NSCopying *)dataCopy intensity];
    v8 = v7;
    [(NSCopying *)dataCopy maximumBlurRadius];
    v10 = v8 * v9;
    [(NSCopying *)dataCopy maximumDimmingFraction];
    v12 = v8 * v11;
    v13 = [MEMORY[0x277D75210] effectWithBlurRadius:v10];
    blurEffectView = [(PXAssetsSectionBlurView *)self blurEffectView];
    [blurEffectView setEffect:v13];

    dimmingView = [(PXAssetsSectionBlurView *)self dimmingView];
    [dimmingView setAlpha:v12];
  }
}

- (void)layoutSubviews
{
  [(PXAssetsSectionBlurView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  blurEffectView = [(PXAssetsSectionBlurView *)self blurEffectView];
  [blurEffectView setFrame:{v4, v6, v8, v10}];

  dimmingView = [(PXAssetsSectionBlurView *)self dimmingView];
  [dimmingView setFrame:{v4, v6, v8, v10}];
}

- (PXAssetsSectionBlurView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PXAssetsSectionBlurView;
  v3 = [(PXAssetsSectionBlurView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D68]);
    blurEffectView = v3->_blurEffectView;
    v3->_blurEffectView = v4;

    [(PXAssetsSectionBlurView *)v3 addSubview:v3->_blurEffectView];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    dimmingView = v3->_dimmingView;
    v3->_dimmingView = v6;

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v3->_dimmingView setBackgroundColor:systemBackgroundColor];

    [(PXAssetsSectionBlurView *)v3 addSubview:v3->_dimmingView];
  }

  return v3;
}

@end