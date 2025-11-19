@interface DBAppLinkLeafIconDataSource
- (CAFAppLink)appLink;
- (_TtC9DashBoard27DBAppLinkLeafIconDataSource)initWithIdentifier:(id)a3 application:(id)a4 sessionConfiguration:(id)a5;
- (id)icon:(id)a3 displayNameForLocation:(id)a4;
- (void)setAppLink:(id)a3;
@end

@implementation DBAppLinkLeafIconDataSource

- (CAFAppLink)appLink
{
  v3 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAppLink:(id)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (id)icon:(id)a3 displayNameForLocation:(id)a4
{
  v5 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  if (v6)
  {
    v7 = self;
    v8 = [v6 title];
    sub_248383960();

    v9 = sub_248383930();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_TtC9DashBoard27DBAppLinkLeafIconDataSource)initWithIdentifier:(id)a3 application:(id)a4 sessionConfiguration:(id)a5
{
  v8 = sub_248383960();
  v10 = v9;
  *(&self->super.super.isa + OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink) = 0;
  v11 = a4;
  v12 = a5;
  return DBLeafIconDataSource.init(identifier:application:sessionConfiguration:)(v8, v10, a4, a5);
}

@end