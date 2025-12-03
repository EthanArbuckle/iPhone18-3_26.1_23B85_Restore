@interface DismissibleTileHeaderView
- (id)accessibilityAccessoryLabel;
- (void)didReceiveSignificantTimeChangeNotification:(id)notification;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DismissibleTileHeaderView

- (void)didReceiveSignificantTimeChangeNotification:(id)notification
{
  v4 = sub_1BA4A1018();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0FC8();
  selfCopy = self;
  sub_1BA40E098();

  (*(v5 + 8))(v7, v4);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA4110C0(change);
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  sub_1BA4A6D78();
  selfCopy = self;
  eventCopy = event;
  v8 = sub_1BA4A6D68();
  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for DismissibleTileHeaderView();
  [(DismissibleTileHeaderView *)&v12 touchesCancelled:v8 withEvent:eventCopy];

  v9 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v10 = *(&selfCopy->super.super.super.isa + v9);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryColor;
    swift_beginAccess();
    [v10 setTextColor_];
  }
}

- (id)accessibilityAccessoryLabel
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

@end