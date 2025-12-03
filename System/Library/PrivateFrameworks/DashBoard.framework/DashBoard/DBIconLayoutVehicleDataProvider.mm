@interface DBIconLayoutVehicleDataProvider
+ (NSDictionary)defaultIconState;
- (Class)iconManager:(id)manager folderControllerClassForFolderClass:(Class)class proposedClass:(Class)proposedClass;
- (NSArray)allApplicationIcons;
- (_TtC9DashBoard31DBIconLayoutVehicleDataProvider)init;
- (id)defaultIconStateForIconManager:(id)manager;
- (void)getApplicationIconInformationForBundleID:(id)d drawBorder:(BOOL)border completion:(id)completion;
- (void)getIconStateWithCompletion:(id)completion;
- (void)resetIconState;
- (void)setIconState:(id)state;
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
  selfCopy = self;
  DBIconLayoutVehicleDataProvider.allApplicationIcons.getter();

  sub_24814FB28(0, &unk_27EE93D00);
  v3 = sub_248383B00();

  return v3;
}

- (void)getIconStateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel)) + 0x228);
  selfCopy = self;
  v7 = v5();
  v4[2](v4, v7, 0);

  _Block_release(v4);
}

- (void)setIconState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  DBIconLayoutVehicleDataProvider.setIconState(_:)(stateCopy);
}

- (void)resetIconState
{
  v2 = *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel)) + 0x238);
  selfCopy = self;
  v2();
}

- (void)getApplicationIconInformationForBundleID:(id)d drawBorder:(BOOL)border completion:(id)completion
{
  borderCopy = border;
  v7 = _Block_copy(completion);
  v8 = sub_248383960();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_24830172C(v8, v10, borderCopy, selfCopy, v7);
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

- (Class)iconManager:(id)manager folderControllerClassForFolderClass:(Class)class proposedClass:(Class)proposedClass
{
  sub_24814FB28(0, &qword_27EE935A8);

  return swift_getObjCClassFromMetadata();
}

- (id)defaultIconStateForIconManager:(id)manager
{
  swift_getObjectType();
  static DBIconLayoutVehicleDataProvider.defaultIconState.getter();
  v3 = sub_248383880();

  return v3;
}

@end