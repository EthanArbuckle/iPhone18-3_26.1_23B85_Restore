@interface DBAppLinkPunchthroughLauncher
- (_TtC9DashBoard29DBAppLinkPunchthroughLauncher)init;
- (_TtC9DashBoard29DBAppLinkPunchthroughLauncher)initWithSession:(id)a3;
- (void)activatePunchthroughWithAppLink:(id)a3;
@end

@implementation DBAppLinkPunchthroughLauncher

- (_TtC9DashBoard29DBAppLinkPunchthroughLauncher)initWithSession:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard29DBAppLinkPunchthroughLauncher_carSession) = a3;
  sub_248382B80();
  swift_allocObject();
  v5 = a3;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard29DBAppLinkPunchthroughLauncher_requestContentManager) = sub_248382B70();
  v8.receiver = self;
  v8.super_class = type metadata accessor for DBAppLinkPunchthroughLauncher();
  v6 = [(DBAppLinkPunchthroughLauncher *)&v8 init];

  return v6;
}

- (void)activatePunchthroughWithAppLink:(id)a3
{
  v4 = a3;
  v5 = self;
  DBAppLinkPunchthroughLauncher.activatePunchthrough(appLink:)(v4);
}

- (_TtC9DashBoard29DBAppLinkPunchthroughLauncher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end