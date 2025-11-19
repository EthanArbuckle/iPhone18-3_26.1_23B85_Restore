@interface PXAssetsSectionBlurView
- (CGRect)clippingRect;
- (PXAssetsSectionBlurView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setUserData:(id)a3;
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

- (void)setUserData:(id)a3
{
  v20 = a3;
  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [(NSCopying *)v20 px_descriptionForAssertionMessage];
      [v16 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionBlurView.m" lineNumber:53 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v18, v19}];
    }
  }

  if (self->_userData != v20)
  {
    v5 = [(NSCopying *)v20 copy];
    userData = self->_userData;
    self->_userData = v5;

    [(NSCopying *)v20 intensity];
    v8 = v7;
    [(NSCopying *)v20 maximumBlurRadius];
    v10 = v8 * v9;
    [(NSCopying *)v20 maximumDimmingFraction];
    v12 = v8 * v11;
    v13 = [MEMORY[0x277D75210] effectWithBlurRadius:v10];
    v14 = [(PXAssetsSectionBlurView *)self blurEffectView];
    [v14 setEffect:v13];

    v15 = [(PXAssetsSectionBlurView *)self dimmingView];
    [v15 setAlpha:v12];
  }
}

- (void)layoutSubviews
{
  [(PXAssetsSectionBlurView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXAssetsSectionBlurView *)self blurEffectView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(PXAssetsSectionBlurView *)self dimmingView];
  [v12 setFrame:{v4, v6, v8, v10}];
}

- (PXAssetsSectionBlurView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PXAssetsSectionBlurView;
  v3 = [(PXAssetsSectionBlurView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D68]);
    blurEffectView = v3->_blurEffectView;
    v3->_blurEffectView = v4;

    [(PXAssetsSectionBlurView *)v3 addSubview:v3->_blurEffectView];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    dimmingView = v3->_dimmingView;
    v3->_dimmingView = v6;

    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v3->_dimmingView setBackgroundColor:v8];

    [(PXAssetsSectionBlurView *)v3 addSubview:v3->_dimmingView];
  }

  return v3;
}

@end