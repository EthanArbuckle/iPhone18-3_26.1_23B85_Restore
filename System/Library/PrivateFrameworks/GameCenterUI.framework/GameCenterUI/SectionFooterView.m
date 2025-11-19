@interface SectionFooterView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (UIEdgeInsets)layoutMargins;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityFooterLabel;
- (void)handleTapWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
@end

@implementation SectionFooterView

- (UIEdgeInsets)layoutMargins
{
  v2 = self;
  sub_24E2B07EC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  v3 = self;
  sub_24E2B089C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_24E2B096C(a4);
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
  sub_24E2B0C34();
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2B1084(v4);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_24E2B11F0();
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityFooterLabel
{
  v2 = sub_24E2B3314();

  return v2;
}

@end