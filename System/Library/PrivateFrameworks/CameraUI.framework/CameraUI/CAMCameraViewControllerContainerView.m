@interface CAMCameraViewControllerContainerView
- (CAMCameraViewControllerContainerView)initWithCoder:(id)a3;
- (CAMCameraViewControllerContainerView)initWithFrame:(CGRect)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (void)layoutSubviews;
- (void)setAdditionalContentView:(id)a3;
- (void)setCustomOverlayView:(id)a3;
- (void)setViewfinderView:(id)a3;
- (void)verifyViewOrdering;
@end

@implementation CAMCameraViewControllerContainerView

- (CAMCameraViewControllerContainerView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMCameraViewControllerContainerView;
  v3 = [(CAMCameraViewControllerContainerView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMCameraViewControllerContainerView *)v3 _commonCAMCameraViewControllerContainerViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMCameraViewControllerContainerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CAMCameraViewControllerContainerView;
  v3 = [(CAMCameraViewControllerContainerView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CAMCameraViewControllerContainerView *)v3 _commonCAMCameraViewControllerContainerViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CAMCameraViewControllerContainerView;
  [(CAMCameraViewControllerContainerView *)&v14 layoutSubviews];
  [(CAMCameraViewControllerContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMCameraViewControllerContainerView *)self viewfinderView];
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MidY = CGRectGetMidY(v16);
  [v11 setBounds:{v4, v6, v8, v10}];
  [v11 setCenter:{MidX, MidY}];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CAMCameraViewControllerContainerView *)self viewfinderView];
  [v5 systemLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setViewfinderView:(id)a3
{
  v5 = a3;
  viewfinderView = self->_viewfinderView;
  if (viewfinderView != v5)
  {
    v7 = v5;
    [(UIView *)viewfinderView removeFromSuperview];
    objc_storeStrong(&self->_viewfinderView, a3);
    viewfinderView = [(CAMCameraViewControllerContainerView *)self verifyViewOrdering];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](viewfinderView, v5);
}

- (void)setCustomOverlayView:(id)a3
{
  v5 = a3;
  customOverlayView = self->_customOverlayView;
  if (customOverlayView != v5)
  {
    v7 = v5;
    [(UIView *)customOverlayView removeFromSuperview];
    objc_storeStrong(&self->_customOverlayView, a3);
    customOverlayView = [(CAMCameraViewControllerContainerView *)self verifyViewOrdering];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](customOverlayView, v5);
}

- (void)setAdditionalContentView:(id)a3
{
  v5 = a3;
  additionalContentView = self->_additionalContentView;
  if (additionalContentView != v5)
  {
    v7 = v5;
    [(UIView *)additionalContentView removeFromSuperview];
    objc_storeStrong(&self->_additionalContentView, a3);
    additionalContentView = [(CAMCameraViewControllerContainerView *)self verifyViewOrdering];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](additionalContentView, v5);
}

- (void)verifyViewOrdering
{
  v7 = [(CAMCameraViewControllerContainerView *)self viewfinderView];
  v3 = [(CAMCameraViewControllerContainerView *)self customOverlayView];
  v4 = [(CAMCameraViewControllerContainerView *)self additionalContentView];
  v5 = v7;
  v6 = v4;
  if (v7)
  {
    [(CAMCameraViewControllerContainerView *)self addSubview:v7];
    [(CAMCameraViewControllerContainerView *)self sendSubviewToBack:v7];
    v5 = v7;
  }

  if (v3)
  {
    [(CAMCameraViewControllerContainerView *)self addSubview:v3];
    [(CAMCameraViewControllerContainerView *)self bringSubviewToFront:v3];
    v5 = v7;
  }

  if (v5 && v6)
  {
    [(CAMCameraViewControllerContainerView *)self insertSubview:v6 aboveSubview:v5];
  }

  else if (v3 && v6)
  {
    [(CAMCameraViewControllerContainerView *)self insertSubview:v6 belowSubview:v3];
  }
}

@end