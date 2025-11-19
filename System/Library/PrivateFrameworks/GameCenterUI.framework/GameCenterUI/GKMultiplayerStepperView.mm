@interface GKMultiplayerStepperView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (UIButton)accessibilityDownButton;
- (UIButton)accessibilityUpButton;
- (void)layoutSubviews;
@end

@implementation GKMultiplayerStepperView

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_24DFFD990();
  v8 = v7;
  v10 = v9;
  swift_unknownObjectRelease();

  v11 = 0.0;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.var3 = v11;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24DFFDC84();
}

- (UIButton)accessibilityDownButton
{
  v2 = sub_24DFFE08C();

  return v2;
}

- (UIButton)accessibilityUpButton
{
  v2 = sub_24DFFE0CC();

  return v2;
}

@end