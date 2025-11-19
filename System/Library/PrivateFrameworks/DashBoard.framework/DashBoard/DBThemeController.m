@interface DBThemeController
- (BOOL)needsToUpdateThemeDataOnVehicle:(id)a3;
- (NSArray)displays;
- (NSURL)extraAssetsURL;
- (NSURL)layoutURL;
- (_TtC9DashBoard17DBThemeController)init;
- (_TtC9DashBoard17DBThemeController)initWithThemeAssetDocument:(id)a3;
- (id)secureURLFor:(id)a3 displayID:(id)a4;
- (id)urlFor:(id)a3 displayID:(id)a4;
- (int64_t)defaultAppearanceModePreferenceForThemeData:(id)a3;
- (unint64_t)assetVersion;
- (void)willUpdateThemeData:(id)a3 withDuration:(double)a4 delay:(double)a5;
@end

@implementation DBThemeController

- (_TtC9DashBoard17DBThemeController)initWithThemeAssetDocument:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard17DBThemeController_themeAssetDocument) = a3;
  v5 = objc_allocWithZone(MEMORY[0x277CF89C0]);
  v6 = a3;
  result = [v5 initWithProtocol_];
  if (result)
  {
    *(&self->super.isa + OBJC_IVAR____TtC9DashBoard17DBThemeController_observers) = result;
    v9.receiver = self;
    v9.super_class = type metadata accessor for DBThemeController();
    v8 = [(DBThemeController *)&v9 init];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSURL)layoutURL
{
  v3 = sub_248381170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC9DashBoard17DBThemeController_themeAssetDocument);
  v8 = self;
  v9 = [v7 documentURL];
  sub_248381120();

  v10 = sub_2483810F0();
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (NSURL)extraAssetsURL
{
  v20 = sub_2483810D0();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248381170();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x68);
  v14 = self;
  v13();
  v21 = 0x736172747845;
  v22 = 0xE600000000000000;
  v15 = v20;
  (*(v3 + 104))(v5, *MEMORY[0x277CC91C0], v20);
  sub_24831576C();
  sub_248381160();

  (*(v3 + 8))(v5, v15);
  v16 = *(v7 + 8);
  v16(v9, v6);
  v17 = sub_2483810F0();
  v16(v12, v6);

  return v17;
}

- (unint64_t)assetVersion
{
  v3 = sub_248381690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248381840();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = self;
  DBThemeAssetDocument.document.getter(v10);
  sub_248381830();
  (*(v8 + 8))(v10, v7);
  v12 = sub_248381670();

  (*(v4 + 8))(v6, v3);
  return v12;
}

- (NSArray)displays
{
  v2 = self;
  DBThemeController.displays.getter();

  sub_24814FB28(0, &qword_27EE93B28);
  v3 = sub_248383B00();

  return v3;
}

- (id)secureURLFor:(id)a3 displayID:(id)a4
{
  v5 = sub_248383960();
  v7 = v6;
  v8 = sub_248383960();
  v10 = v9;
  v11 = self;
  v12 = sub_2483166AC(v5, v7, v8, v10);

  return v12;
}

- (id)urlFor:(id)a3 displayID:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_248383960();
  v10 = v9;
  v11 = sub_248383960();
  v13 = v12;
  v14 = self;
  DBThemeController.url(for:displayID:)(v8, v10, v11, v13, v7);

  v15 = sub_248381170();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v7, 1, v15);
  v18 = 0;
  if (v17 != 1)
  {
    v19 = sub_2483810F0();
    (*(v16 + 8))(v7, v15);
    v18 = v19;
  }

  return v18;
}

- (BOOL)needsToUpdateThemeDataOnVehicle:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = DBThemeController.needsToUpdateThemeData(on:)(v4);

  return self & 1;
}

- (int64_t)defaultAppearanceModePreferenceForThemeData:(id)a3
{
  sub_24814FB28(0, &qword_27EE8FEF8);
  v4 = sub_2483838A0();
  v5 = self;
  v6 = DBThemeController.defaultAppearanceModePreference(for:)(v4);

  return v6;
}

- (void)willUpdateThemeData:(id)a3 withDuration:(double)a4 delay:(double)a5
{
  sub_24814FB28(0, &qword_27EE8FEF8);
  sub_2483838A0();
  v8 = *(&self->super.isa + OBJC_IVAR____TtC9DashBoard17DBThemeController_observers);
  v9 = self;
  v10 = sub_248383880();

  [v8 willUpdateThemeData:v10 withDuration:a4 delay:a5];
}

- (_TtC9DashBoard17DBThemeController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end