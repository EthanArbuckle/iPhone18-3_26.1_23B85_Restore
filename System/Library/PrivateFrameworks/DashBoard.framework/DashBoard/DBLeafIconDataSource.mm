@interface DBLeafIconDataSource
+ (NSString)kDBSBApplicationBadgeKey;
- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context;
- (_TtC9DashBoard20DBLeafIconDataSource)init;
- (_TtC9DashBoard20DBLeafIconDataSource)initWithIdentifier:(id)identifier application:(id)application sessionConfiguration:(id)configuration;
- (id)badgeNumberOrStringForIcon:(id)icon;
- (id)formattedAccessoryStringForIcon:(id)icon;
- (id)icon:(id)icon displayNameForLocation:(id)location;
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info;
- (id)icon:(id)icon unmaskedImageWithInfo:(SBIconImageInfo *)info;
- (void)invalidateBadgeValue;
@end

@implementation DBLeafIconDataSource

+ (NSString)kDBSBApplicationBadgeKey
{
  v2 = sub_248383930();

  return v2;
}

- (_TtC9DashBoard20DBLeafIconDataSource)initWithIdentifier:(id)identifier application:(id)application sessionConfiguration:(id)configuration
{
  v7 = sub_248383960();
  v9 = v8;
  applicationCopy = application;
  configurationCopy = configuration;
  return DBLeafIconDataSource.init(identifier:application:sessionConfiguration:)(v7, v9, application, configuration);
}

- (void)invalidateBadgeValue
{
  selfCopy = self;
  DBLeafIconDataSource.invalidateBadgeValue()();
}

- (_TtC9DashBoard20DBLeafIconDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)icon:(id)icon unmaskedImageWithInfo:(SBIconImageInfo *)info
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  iconCopy = icon;
  selfCopy = self;
  v18.size.width = v11;
  v18.size.height = v10;
  v18.scale = v9;
  v18.continuousCornerRadius = v8;
  v15 = DBLeafIconDataSource.icon(_:unmaskedImageWith:)(iconCopy, v18);

  return v15;
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  iconCopy = icon;
  selfCopy = self;
  v15 = _s9DashBoard20DBLeafIconDataSourceC4icon_9imageWithSo7UIImageCSgSo06SBLeafD0C_So15SBIconImageInfoVtF_0(v11, v10, v9, v8);

  return v15;
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  iconCopy = icon;
  locationCopy = location;
  selfCopy = self;
  _s9DashBoard20DBLeafIconDataSourceC4icon_22displayNameForLocationSSSgSo06SBLeafD0C_So06SBIconK0atF_0();
  v10 = v9;

  if (v10)
  {
    v11 = sub_248383930();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)formattedAccessoryStringForIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  object = DBLeafIconDataSource.formattedAccessoryString(for:)(iconCopy).value._object;

  if (object)
  {
    v7 = sub_248383930();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)badgeNumberOrStringForIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  DBLeafIconDataSource.badgeNumberOrString(for:)(v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_248384670();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context
{
  if (context)
  {
    swift_unknownObjectRetain();
    sub_248384230();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_2482397D4(v6);
  return 0;
}

@end