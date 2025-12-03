@interface IAMWebView
- (IAMWebView)initWithFrame:(CGRect)frame configuration:(id)configuration;
@end

@implementation IAMWebView

- (IAMWebView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = IAMWebView;
  v4 = [(IAMWebView *)&v9 initWithFrame:configuration configuration:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    scrollView = [(IAMWebView *)v4 scrollView];
    [scrollView setScrollEnabled:0];

    scrollView2 = [(IAMWebView *)v5 scrollView];
    [scrollView2 setContentInsetAdjustmentBehavior:2];

    [(IAMWebView *)v5 setAllowsLinkPreview:0];
  }

  return v5;
}

@end