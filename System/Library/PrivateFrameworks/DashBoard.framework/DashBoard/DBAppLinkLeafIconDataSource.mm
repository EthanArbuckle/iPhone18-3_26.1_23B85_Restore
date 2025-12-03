@interface DBAppLinkLeafIconDataSource
- (CAFAppLink)appLink;
- (_TtC9DashBoard27DBAppLinkLeafIconDataSource)initWithIdentifier:(id)identifier application:(id)application sessionConfiguration:(id)configuration;
- (id)icon:(id)icon displayNameForLocation:(id)location;
- (void)setAppLink:(id)link;
@end

@implementation DBAppLinkLeafIconDataSource

- (CAFAppLink)appLink
{
  v3 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAppLink:(id)link
{
  v5 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = link;
  linkCopy = link;
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  v5 = OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  if (v6)
  {
    selfCopy = self;
    title = [v6 title];
    sub_248383960();

    v9 = sub_248383930();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_TtC9DashBoard27DBAppLinkLeafIconDataSource)initWithIdentifier:(id)identifier application:(id)application sessionConfiguration:(id)configuration
{
  v8 = sub_248383960();
  v10 = v9;
  *(&self->super.super.isa + OBJC_IVAR____TtC9DashBoard27DBAppLinkLeafIconDataSource_appLink) = 0;
  applicationCopy = application;
  configurationCopy = configuration;
  return DBLeafIconDataSource.init(identifier:application:sessionConfiguration:)(v8, v10, application, configuration);
}

@end