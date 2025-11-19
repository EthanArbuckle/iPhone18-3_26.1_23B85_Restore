@interface LeaderboardPlayerLockupView
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)layoutSubviews;
@end

@implementation LeaderboardPlayerLockupView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_24DFB64A4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_24DFB650C(width, height);
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = 0.0;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var3 = v13;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24DFB6634();
}

@end