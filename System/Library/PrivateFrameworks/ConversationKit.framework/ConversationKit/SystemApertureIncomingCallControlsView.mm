@interface SystemApertureIncomingCallControlsView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)gameControllerDidChangeContext;
- (void)layoutSubviews;
@end

@implementation SystemApertureIncomingCallControlsView

- (void)gameControllerDidChangeContext
{
  v2 = self;
  SystemApertureIncomingCallControlsView.gameControllerDidChangeContext()();
}

- (void)layoutSubviews
{
  v2 = self;
  SystemApertureIncomingCallControlsView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = SystemApertureIncomingCallControlsView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v10 = SystemApertureIncomingCallControlsView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(__PAIR128__(*&height, *&width), v8, v9);

  v11 = v10.width;
  v12 = v10.height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  SystemApertureIncomingCallControlsView.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end