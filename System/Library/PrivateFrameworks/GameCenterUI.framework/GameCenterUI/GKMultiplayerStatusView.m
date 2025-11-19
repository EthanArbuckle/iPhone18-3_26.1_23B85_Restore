@interface GKMultiplayerStatusView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityStatusLabel;
- (void)layoutSubviews;
@end

@implementation GKMultiplayerStatusView

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  GKMultiplayerStatusView.measurements(fitting:in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  GKMultiplayerStatusView.layoutSubviews()();
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityStatusLabel
{
  v2 = sub_24E0C80C4();

  return v2;
}

@end