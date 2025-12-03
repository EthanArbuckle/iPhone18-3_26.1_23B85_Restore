@interface DataTypeTileHeaderView
- (id)accessibilityAccessoryLabel;
- (void)didReceiveSignificantTimeChangeNotification:(id)notification;
- (void)updateForTraitChanges;
- (void)updateTitleText;
@end

@implementation DataTypeTileHeaderView

- (void)didReceiveSignificantTimeChangeNotification:(id)notification
{
  v4 = sub_1BA4A1018();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0FC8();
  selfCopy = self;
  sub_1BA2CFF40();

  (*(v5 + 8))(v7, v4);
}

- (void)updateForTraitChanges
{
  selfCopy = self;
  sub_1BA2D0894();
}

- (id)accessibilityAccessoryLabel
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)updateTitleText
{
  selfCopy = self;
  sub_1B9F711CC();
}

@end