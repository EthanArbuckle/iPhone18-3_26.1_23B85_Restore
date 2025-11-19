@interface DBHomeToAppAnimationSettings
- (DBIconView)iconView;
- (_TtC9DashBoard28DBHomeToAppAnimationSettings)init;
- (void)setIconView:(id)a3;
@end

@implementation DBHomeToAppAnimationSettings

- (DBIconView)iconView
{
  v3 = OBJC_IVAR____TtC9DashBoard28DBHomeToAppAnimationSettings_iconView;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIconView:(id)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard28DBHomeToAppAnimationSettings_iconView;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC9DashBoard28DBHomeToAppAnimationSettings)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9DashBoard28DBHomeToAppAnimationSettings_iconView) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DBHomeToAppAnimationSettings();
  return [(DBAnimationSettings *)&v3 init];
}

@end