@interface CAMCameraViewControllerContainerView
- (CAMCameraViewControllerContainerView)initWithCoder:(id)coder;
- (CAMCameraViewControllerContainerView)initWithFrame:(CGRect)frame;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (void)layoutSubviews;
- (void)setAdditionalContentView:(id)view;
- (void)setCustomOverlayView:(id)view;
- (void)setViewfinderView:(id)view;
- (void)verifyViewOrdering;
@end

@implementation CAMCameraViewControllerContainerView

- (CAMCameraViewControllerContainerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMCameraViewControllerContainerView;
  v3 = [(CAMCameraViewControllerContainerView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMCameraViewControllerContainerView *)v3 _commonCAMCameraViewControllerContainerViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMCameraViewControllerContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CAMCameraViewControllerContainerView;
  v3 = [(CAMCameraViewControllerContainerView *)&v7 initWithCoder:coder];
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
  viewfinderView = [(CAMCameraViewControllerContainerView *)self viewfinderView];
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
  [viewfinderView setBounds:{v4, v6, v8, v10}];
  [viewfinderView setCenter:{MidX, MidY}];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewfinderView = [(CAMCameraViewControllerContainerView *)self viewfinderView];
  [viewfinderView systemLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setViewfinderView:(id)view
{
  viewCopy = view;
  viewfinderView = self->_viewfinderView;
  if (viewfinderView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)viewfinderView removeFromSuperview];
    objc_storeStrong(&self->_viewfinderView, view);
    viewfinderView = [(CAMCameraViewControllerContainerView *)self verifyViewOrdering];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](viewfinderView, viewCopy);
}

- (void)setCustomOverlayView:(id)view
{
  viewCopy = view;
  customOverlayView = self->_customOverlayView;
  if (customOverlayView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)customOverlayView removeFromSuperview];
    objc_storeStrong(&self->_customOverlayView, view);
    customOverlayView = [(CAMCameraViewControllerContainerView *)self verifyViewOrdering];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](customOverlayView, viewCopy);
}

- (void)setAdditionalContentView:(id)view
{
  viewCopy = view;
  additionalContentView = self->_additionalContentView;
  if (additionalContentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)additionalContentView removeFromSuperview];
    objc_storeStrong(&self->_additionalContentView, view);
    additionalContentView = [(CAMCameraViewControllerContainerView *)self verifyViewOrdering];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](additionalContentView, viewCopy);
}

- (void)verifyViewOrdering
{
  viewfinderView = [(CAMCameraViewControllerContainerView *)self viewfinderView];
  customOverlayView = [(CAMCameraViewControllerContainerView *)self customOverlayView];
  additionalContentView = [(CAMCameraViewControllerContainerView *)self additionalContentView];
  v5 = viewfinderView;
  v6 = additionalContentView;
  if (viewfinderView)
  {
    [(CAMCameraViewControllerContainerView *)self addSubview:viewfinderView];
    [(CAMCameraViewControllerContainerView *)self sendSubviewToBack:viewfinderView];
    v5 = viewfinderView;
  }

  if (customOverlayView)
  {
    [(CAMCameraViewControllerContainerView *)self addSubview:customOverlayView];
    [(CAMCameraViewControllerContainerView *)self bringSubviewToFront:customOverlayView];
    v5 = viewfinderView;
  }

  if (v5 && v6)
  {
    [(CAMCameraViewControllerContainerView *)self insertSubview:v6 aboveSubview:v5];
  }

  else if (customOverlayView && v6)
  {
    [(CAMCameraViewControllerContainerView *)self insertSubview:v6 belowSubview:customOverlayView];
  }
}

@end