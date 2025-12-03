@interface LiveCallDurationView
- (BOOL)isHidden;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (double)alpha;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setAlpha:(double)alpha;
- (void)setHidden:(BOOL)hidden;
@end

@implementation LiveCallDurationView

- (NSString)accessibilityLabel
{
  selfCopy = self;
  v3 = LiveCallDurationView.accessibilityLabel.getter();
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
  LiveCallDurationView.accessibilityLabel.setter(v4, v6);
}

- (double)alpha
{
  selfCopy = self;
  LiveCallDurationView.alpha.getter();
  v4 = v3;

  return v4;
}

- (void)setAlpha:(double)alpha
{
  selfCopy = self;
  LiveCallDurationView.alpha.setter(alpha);
}

- (BOOL)isHidden
{
  selfCopy = self;
  v3 = LiveCallDurationView.isHidden.getter();

  return v3 & 1;
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  LiveCallDurationView.isHidden.setter(hidden);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  LiveCallDurationView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  LiveCallDurationView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = LiveCallDurationView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

@end