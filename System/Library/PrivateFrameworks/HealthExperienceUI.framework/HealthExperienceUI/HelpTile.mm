@interface HelpTile
- (void)actionTapped;
- (void)dismissTapped;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HelpTile

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA182078(a3);
}

- (void)actionTapped
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = self;

  v5(v7);
}

- (void)dismissTapped
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = self;

  v5(v7);
}

@end