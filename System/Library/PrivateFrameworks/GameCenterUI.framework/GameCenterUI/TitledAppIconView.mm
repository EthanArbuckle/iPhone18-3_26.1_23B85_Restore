@interface TitledAppIconView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel;
- (void)layoutSubviews;
@end

@implementation TitledAppIconView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E2EBB7C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_24E2EBEB0();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_24E2EC488(in, selfCopy);
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

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel
{
  v2 = sub_24E2EC18C();

  return v2;
}

@end