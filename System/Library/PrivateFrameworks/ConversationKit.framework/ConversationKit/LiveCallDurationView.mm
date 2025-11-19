@interface LiveCallDurationView
- (BOOL)isHidden;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (double)alpha;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation LiveCallDurationView

- (NSString)accessibilityLabel
{
  v2 = self;
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
  LiveCallDurationView.accessibilityLabel.setter(v4, v6);
}

- (double)alpha
{
  v2 = self;
  LiveCallDurationView.alpha.getter();
  v4 = v3;

  return v4;
}

- (void)setAlpha:(double)a3
{
  v4 = self;
  LiveCallDurationView.alpha.setter(a3);
}

- (BOOL)isHidden
{
  v2 = self;
  v3 = LiveCallDurationView.isHidden.getter();

  return v3 & 1;
}

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  LiveCallDurationView.isHidden.setter(a3);
}

- (void)didMoveToWindow
{
  v2 = self;
  LiveCallDurationView.didMoveToWindow()();
}

- (void)layoutSubviews
{
  v2 = self;
  LiveCallDurationView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = LiveCallDurationView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

@end