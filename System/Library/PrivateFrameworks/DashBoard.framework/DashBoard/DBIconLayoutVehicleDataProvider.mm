@interface DBIconLayoutVehicleDataProvider
+ (NSDictionary)defaultIconState;
- (Class)iconManager:(id)a3 folderControllerClassForFolderClass:(Class)a4 proposedClass:(Class)a5;
- (NSArray)allApplicationIcons;
- (_TtC9DashBoard31DBIconLayoutVehicleDataProvider)init;
- (id)defaultIconStateForIconManager:(id)a3;
- (void)getApplicationIconInformationForBundleID:(id)a3 drawBorder:(BOOL)a4 completion:(id)a5;
- (void)getIconStateWithCompletion:(id)a3;
- (void)resetIconState;
- (void)setIconState:(id)a3;
@end

@implementation DBIconLayoutVehicleDataProvider

- (_TtC9DashBoard31DBIconLayoutVehicleDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)allApplicationIcons
{
  v2 = self;
  DBIconLayoutVehicleDataProvider.allApplicationIcons.getter();

  sub_24814FB28(0, &unk_27EE93D00);
  v3 = sub_248383B00();

  return v3;
}

- (void)getIconStateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel)) + 0x228);
  v6 = self;
  v7 = v5();
  v4[2](v4, v7, 0);

  _Block_release(v4);
}

- (void)setIconState:(id)a3
{
  v4 = a3;
  v5 = self;
  DBIconLayoutVehicleDataProvider.setIconState(_:)(v4);
}

- (void)resetIconState
{
  v2 = *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel)) + 0x238);
  v3 = self;
  v2();
}

- (void)getApplicationIconInformationForBundleID:(id)a3 drawBorder:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  v8 = sub_248383960();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_24830172C(v8, v10, v5, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

+ (NSDictionary)defaultIconState
{
  swift_getObjCClassMetadata();
  static DBIconLayoutVehicleDataProvider.defaultIconState.getter();
  v2 = sub_248383880();

  return v2;
}

- (Class)iconManager:(id)a3 folderControllerClassForFolderClass:(Class)a4 proposedClass:(Class)a5
{
  sub_24814FB28(0, &qword_27EE935A8);

  return swift_getObjCClassFromMetadata();
}

- (id)defaultIconStateForIconManager:(id)a3
{
  swift_getObjectType();
  static DBIconLayoutVehicleDataProvider.defaultIconState.getter();
  v3 = sub_248383880();

  return v3;
}

@end