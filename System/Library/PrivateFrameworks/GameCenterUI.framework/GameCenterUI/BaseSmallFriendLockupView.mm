@interface BaseSmallFriendLockupView
- (BOOL)accessibilityActivate;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel;
- (void)didTapAccessoryButton;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BaseSmallFriendLockupView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_24E1E7F6C();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_24E1E7F88();
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
  swift_unknownObjectRetain();
  v6 = self;
  sub_24E1E7FEC(a4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E1E80F8();
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  sub_24E1E864C();

  return 1;
}

- (void)didTapAccessoryButton
{
  v2 = self;
  sub_24E1E597C();
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel
{
  v2 = sub_24E1E5A70();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel
{
  v2 = sub_24E1E5A7C();

  return v2;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1E8748(a3);
}

@end