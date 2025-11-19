@interface AchievementCard
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (NSDate)accessibilityAchievementCompletedDate;
- (_TtC12GameCenterUI16AchievementBadge)accessibilityBadge;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)didTap;
- (void)layoutSubviews;
@end

@implementation AchievementCard

- (void)_dynamicUserInterfaceTraitDidChange
{
  v2 = self;
  AchievementCard._dynamicUserInterfaceTraitDidChange()();
}

- (void)layoutSubviews
{
  v2 = self;
  AchievementCard.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = AchievementCard.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_24E27B6E8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel
{
  v2 = sub_24E279BA0();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel
{
  v2 = sub_24E279BE0();

  return v2;
}

- (NSDate)accessibilityAchievementCompletedDate
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_24E279CE4(&v8 - v3);
  v5 = sub_24E343368();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    v6 = sub_24E3432E8();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

- (_TtC12GameCenterUI16AchievementBadge)accessibilityBadge
{
  v2 = sub_24E279DC0();

  return v2;
}

- (void)didTap
{
  v2 = self;
  sub_24E27A1A0();
}

@end