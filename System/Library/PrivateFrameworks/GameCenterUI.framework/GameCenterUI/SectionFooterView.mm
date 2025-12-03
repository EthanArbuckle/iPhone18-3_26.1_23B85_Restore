@interface SectionFooterView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (UIEdgeInsets)layoutMargins;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityFooterLabel;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
@end

@implementation SectionFooterView

- (UIEdgeInsets)layoutMargins
{
  selfCopy = self;
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

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  selfCopy = self;
  sub_24E2B089C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_24E2B096C(in);
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
  selfCopy = self;
  sub_24E2B0C34();
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_24E2B1084(recognizerCopy);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24E2B11F0();
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityFooterLabel
{
  v2 = sub_24E2B3314();

  return v2;
}

@end