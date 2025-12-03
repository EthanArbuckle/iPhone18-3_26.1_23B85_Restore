@interface DBAppLinkPunchthroughLauncher
- (_TtC9DashBoard29DBAppLinkPunchthroughLauncher)init;
- (_TtC9DashBoard29DBAppLinkPunchthroughLauncher)initWithSession:(id)session;
- (void)activatePunchthroughWithAppLink:(id)link;
@end

@implementation DBAppLinkPunchthroughLauncher

- (_TtC9DashBoard29DBAppLinkPunchthroughLauncher)initWithSession:(id)session
{
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard29DBAppLinkPunchthroughLauncher_carSession) = session;
  sub_248382B80();
  swift_allocObject();
  sessionCopy = session;
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard29DBAppLinkPunchthroughLauncher_requestContentManager) = sub_248382B70();
  v8.receiver = self;
  v8.super_class = type metadata accessor for DBAppLinkPunchthroughLauncher();
  v6 = [(DBAppLinkPunchthroughLauncher *)&v8 init];

  return v6;
}

- (void)activatePunchthroughWithAppLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  DBAppLinkPunchthroughLauncher.activatePunchthrough(appLink:)(linkCopy);
}

- (_TtC9DashBoard29DBAppLinkPunchthroughLauncher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end