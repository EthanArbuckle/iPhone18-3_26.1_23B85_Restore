@interface SystemApertureIncomingCallLeadingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (void)layoutSubviews;
@end

@implementation SystemApertureIncomingCallLeadingView

- (void)layoutSubviews
{
  v2 = self;
  SystemApertureIncomingCallLeadingView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5 = SystemApertureIncomingCallLeadingView.sizeThatFits(_:)(a3);
  height = v5.height;
  width = v5.width;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  v4 = self;
  SystemApertureIncomingCallLeadingView.sizeThatFits(_:for:)();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end