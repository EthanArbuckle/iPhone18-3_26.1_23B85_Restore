@interface ICAttributionHighlightView
- (ICAttributionHighlightView)initWithConfiguration:(id)a3;
@end

@implementation ICAttributionHighlightView

- (ICAttributionHighlightView)initWithConfiguration:(id)a3
{
  v5 = a3;
  [v5 adjustedFrame];
  v11.receiver = self;
  v11.super_class = ICAttributionHighlightView;
  v6 = [(ICAttributionHighlightView *)&v11 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [v5 color];
    [(ICAttributionHighlightView *)v7 setBackgroundColor:v8];

    v9 = [(ICAttributionHighlightView *)v7 layer];
    [v9 setCornerRadius:2.75];

    [v5 alpha];
    [(ICAttributionHighlightView *)v7 setAlpha:?];
  }

  return v7;
}

@end