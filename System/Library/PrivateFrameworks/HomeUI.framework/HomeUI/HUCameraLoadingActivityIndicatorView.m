@interface HUCameraLoadingActivityIndicatorView
- (HUCameraLoadingActivityIndicatorView)initWithFrame:(CGRect)a3;
- (UIActivityIndicatorView)loadingActivityIndicator;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation HUCameraLoadingActivityIndicatorView

- (HUCameraLoadingActivityIndicatorView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = HUCameraLoadingActivityIndicatorView;
  v3 = [(HUCameraLoadingActivityIndicatorView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(HUCameraLoadingActivityIndicatorView *)v3 setBackgroundColor:v4];

    v5 = [(HUCameraLoadingActivityIndicatorView *)v3 loadingActivityIndicator];
    [(HUCameraLoadingActivityIndicatorView *)v3 addSubview:v5];

    v6 = [(HUCameraLoadingActivityIndicatorView *)v3 loadingActivityIndicator];
    v7 = [v6 centerXAnchor];
    v8 = [(HUCameraLoadingActivityIndicatorView *)v3 centerXAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v9 setActive:1];

    v10 = [(HUCameraLoadingActivityIndicatorView *)v3 loadingActivityIndicator];
    v11 = [v10 centerYAnchor];
    v12 = [(HUCameraLoadingActivityIndicatorView *)v3 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];
  }

  return v3;
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = [(HUCameraLoadingActivityIndicatorView *)self loadingActivityIndicator];
  v5 = v4;
  if (a3)
  {
    [v4 startAnimating];
  }

  else
  {
    [v4 stopAnimating];
  }
}

- (UIActivityIndicatorView)loadingActivityIndicator
{
  loadingActivityIndicator = self->_loadingActivityIndicator;
  if (!loadingActivityIndicator)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIActivityIndicatorView *)v4 setColor:v5];

    [(UIActivityIndicatorView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = self->_loadingActivityIndicator;
    self->_loadingActivityIndicator = v4;

    loadingActivityIndicator = self->_loadingActivityIndicator;
  }

  return loadingActivityIndicator;
}

@end