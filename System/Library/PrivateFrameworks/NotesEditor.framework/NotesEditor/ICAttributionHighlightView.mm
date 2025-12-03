@interface ICAttributionHighlightView
- (ICAttributionHighlightView)initWithConfiguration:(id)configuration;
@end

@implementation ICAttributionHighlightView

- (ICAttributionHighlightView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy adjustedFrame];
  v11.receiver = self;
  v11.super_class = ICAttributionHighlightView;
  v6 = [(ICAttributionHighlightView *)&v11 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    color = [configurationCopy color];
    [(ICAttributionHighlightView *)v7 setBackgroundColor:color];

    layer = [(ICAttributionHighlightView *)v7 layer];
    [layer setCornerRadius:2.75];

    [configurationCopy alpha];
    [(ICAttributionHighlightView *)v7 setAlpha:?];
  }

  return v7;
}

@end