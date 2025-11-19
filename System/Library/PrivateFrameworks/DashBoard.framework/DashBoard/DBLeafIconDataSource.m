@interface DBLeafIconDataSource
+ (NSString)kDBSBApplicationBadgeKey;
- (BOOL)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5;
- (_TtC9DashBoard20DBLeafIconDataSource)init;
- (_TtC9DashBoard20DBLeafIconDataSource)initWithIdentifier:(id)a3 application:(id)a4 sessionConfiguration:(id)a5;
- (id)badgeNumberOrStringForIcon:(id)a3;
- (id)formattedAccessoryStringForIcon:(id)a3;
- (id)icon:(id)a3 displayNameForLocation:(id)a4;
- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4;
- (id)icon:(id)a3 unmaskedImageWithInfo:(SBIconImageInfo *)a4;
- (void)invalidateBadgeValue;
@end

@implementation DBLeafIconDataSource

+ (NSString)kDBSBApplicationBadgeKey
{
  v2 = sub_248383930();

  return v2;
}

- (_TtC9DashBoard20DBLeafIconDataSource)initWithIdentifier:(id)a3 application:(id)a4 sessionConfiguration:(id)a5
{
  v7 = sub_248383960();
  v9 = v8;
  v10 = a4;
  v11 = a5;
  return DBLeafIconDataSource.init(identifier:application:sessionConfiguration:)(v7, v9, a4, a5);
}

- (void)invalidateBadgeValue
{
  v2 = self;
  DBLeafIconDataSource.invalidateBadgeValue()();
}

- (_TtC9DashBoard20DBLeafIconDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)icon:(id)a3 unmaskedImageWithInfo:(SBIconImageInfo *)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = a3;
  v14 = self;
  v18.size.width = v11;
  v18.size.height = v10;
  v18.scale = v9;
  v18.continuousCornerRadius = v8;
  v15 = DBLeafIconDataSource.icon(_:unmaskedImageWith:)(v13, v18);

  return v15;
}

- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = a3;
  v14 = self;
  v15 = _s9DashBoard20DBLeafIconDataSourceC4icon_9imageWithSo7UIImageCSgSo06SBLeafD0C_So15SBIconImageInfoVtF_0(v11, v10, v9, v8);

  return v15;
}

- (id)icon:(id)a3 displayNameForLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
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

- (id)formattedAccessoryStringForIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  object = DBLeafIconDataSource.formattedAccessoryString(for:)(v4).value._object;

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

- (id)badgeNumberOrStringForIcon:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (BOOL)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5
{
  if (a5)
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