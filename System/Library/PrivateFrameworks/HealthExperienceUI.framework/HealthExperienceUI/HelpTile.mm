@interface HelpTile
- (void)actionTapped;
- (void)dismissTapped;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HelpTile

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA182078(change);
}

- (void)actionTapped
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  swift_beginAccess();
  v5 = *(v4 + 16);
  selfCopy = self;

  v5(v7);
}

- (void)dismissTapped
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  swift_beginAccess();
  v5 = *(v4 + 32);
  selfCopy = self;

  v5(v7);
}

@end