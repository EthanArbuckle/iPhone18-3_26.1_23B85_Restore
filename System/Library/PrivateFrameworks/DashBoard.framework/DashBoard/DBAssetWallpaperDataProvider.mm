@interface DBAssetWallpaperDataProvider
- (CRSUIWallpaperDataProvidingDelegate)dataProviderDelegate;
- (_TtC9DashBoard28DBAssetWallpaperDataProvider)init;
- (id)displayID;
- (id)dynamicAppearanceWallpapersForVehicle:(id)vehicle;
- (int64_t)version;
- (void)setDataProviderDelegate:(id)delegate;
@end

@implementation DBAssetWallpaperDataProvider

- (CRSUIWallpaperDataProvidingDelegate)dataProviderDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDataProviderDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC9DashBoard28DBAssetWallpaperDataProvider_dataProviderDelegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (int64_t)version
{
  v3 = sub_248381690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248381840();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  DBThemeAssetDocument.document.getter(v10);
  sub_248381830();
  (*(v8 + 8))(v10, v7);
  v12 = sub_248381670();

  result = (*(v4 + 8))(v6, v3);
  if ((v12 & 0x8000000000000000) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

- (id)displayID
{

  v2 = sub_248383930();

  return v2;
}

- (id)dynamicAppearanceWallpapersForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  selfCopy = self;
  DBAssetWallpaperDataProvider.dynamicAppearanceWallpapers(for:)(vehicleCopy);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE908D8);
  v6 = sub_248383B00();

  return v6;
}

- (_TtC9DashBoard28DBAssetWallpaperDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end