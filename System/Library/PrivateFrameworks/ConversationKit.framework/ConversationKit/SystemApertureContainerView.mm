@interface SystemApertureContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation SystemApertureContainerView

- (void)layoutSubviews
{
  v2 = self;
  SystemApertureContainerView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = SystemApertureContainerView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = SystemApertureContainerView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = SystemApertureContainerView.sizeThatFits(_:for:)(a4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (NSString)accessibilityLabel
{
  v2 = self;
  v3 = SystemApertureContainerView.accessibilityLabel.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x1BFB209B0](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  SystemApertureContainerView.accessibilityLabel.setter(v4, v6);
}

@end