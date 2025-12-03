@interface HUCameraLoadingActivityIndicatorView
- (HUCameraLoadingActivityIndicatorView)initWithFrame:(CGRect)frame;
- (UIActivityIndicatorView)loadingActivityIndicator;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation HUCameraLoadingActivityIndicatorView

- (HUCameraLoadingActivityIndicatorView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = HUCameraLoadingActivityIndicatorView;
  v3 = [(HUCameraLoadingActivityIndicatorView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUCameraLoadingActivityIndicatorView *)v3 setBackgroundColor:clearColor];

    loadingActivityIndicator = [(HUCameraLoadingActivityIndicatorView *)v3 loadingActivityIndicator];
    [(HUCameraLoadingActivityIndicatorView *)v3 addSubview:loadingActivityIndicator];

    loadingActivityIndicator2 = [(HUCameraLoadingActivityIndicatorView *)v3 loadingActivityIndicator];
    centerXAnchor = [loadingActivityIndicator2 centerXAnchor];
    centerXAnchor2 = [(HUCameraLoadingActivityIndicatorView *)v3 centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v9 setActive:1];

    loadingActivityIndicator3 = [(HUCameraLoadingActivityIndicatorView *)v3 loadingActivityIndicator];
    centerYAnchor = [loadingActivityIndicator3 centerYAnchor];
    centerYAnchor2 = [(HUCameraLoadingActivityIndicatorView *)v3 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v13 setActive:1];
  }

  return v3;
}

- (void)willMoveToSuperview:(id)superview
{
  loadingActivityIndicator = [(HUCameraLoadingActivityIndicatorView *)self loadingActivityIndicator];
  v5 = loadingActivityIndicator;
  if (superview)
  {
    [loadingActivityIndicator startAnimating];
  }

  else
  {
    [loadingActivityIndicator stopAnimating];
  }
}

- (UIActivityIndicatorView)loadingActivityIndicator
{
  loadingActivityIndicator = self->_loadingActivityIndicator;
  if (!loadingActivityIndicator)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIActivityIndicatorView *)v4 setColor:systemWhiteColor];

    [(UIActivityIndicatorView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = self->_loadingActivityIndicator;
    self->_loadingActivityIndicator = v4;

    loadingActivityIndicator = self->_loadingActivityIndicator;
  }

  return loadingActivityIndicator;
}

@end