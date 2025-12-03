@interface SystemApertureIncomingCallLeadingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (void)layoutSubviews;
@end

@implementation SystemApertureIncomingCallLeadingView

- (void)layoutSubviews
{
  selfCopy = self;
  SystemApertureIncomingCallLeadingView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5 = SystemApertureIncomingCallLeadingView.sizeThatFits(_:)(fits);
  height = v5.height;
  width = v5.width;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  selfCopy = self;
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