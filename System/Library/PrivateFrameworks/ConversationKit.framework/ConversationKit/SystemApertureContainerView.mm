@interface SystemApertureContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation SystemApertureContainerView

- (void)layoutSubviews
{
  selfCopy = self;
  SystemApertureContainerView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = SystemApertureContainerView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = SystemApertureContainerView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v8 = SystemApertureContainerView.sizeThatFits(_:for:)(mode, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  SystemApertureContainerView.accessibilityLabel.setter(v4, v6);
}

@end