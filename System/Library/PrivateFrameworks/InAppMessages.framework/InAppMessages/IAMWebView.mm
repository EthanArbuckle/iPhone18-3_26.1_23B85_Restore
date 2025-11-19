@interface IAMWebView
- (IAMWebView)initWithFrame:(CGRect)a3 configuration:(id)a4;
@end

@implementation IAMWebView

- (IAMWebView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  v9.receiver = self;
  v9.super_class = IAMWebView;
  v4 = [(IAMWebView *)&v9 initWithFrame:a4 configuration:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v6 = [(IAMWebView *)v4 scrollView];
    [v6 setScrollEnabled:0];

    v7 = [(IAMWebView *)v5 scrollView];
    [v7 setContentInsetAdjustmentBehavior:2];

    [(IAMWebView *)v5 setAllowsLinkPreview:0];
  }

  return v5;
}

@end