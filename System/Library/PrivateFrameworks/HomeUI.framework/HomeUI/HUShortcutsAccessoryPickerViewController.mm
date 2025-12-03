@interface HUShortcutsAccessoryPickerViewController
- (HUShortcutsAccessoryPickerViewController)initWithHome:(id)home configuration:(id)configuration;
- (HUShortcutsAccessoryPickerViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)getServices;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (void)configureWithDefaultSelectionController;
- (void)setServices:(id)services;
@end

@implementation HUShortcutsAccessoryPickerViewController

- (HUShortcutsAccessoryPickerViewController)initWithHome:(id)home configuration:(id)configuration
{
  homeCopy = home;
  configurationCopy = configuration;
  HUShortcutsTriggerViewAccessoryPickerConfiguration.buildConfiguration()(&v10);
  v7 = objc_allocWithZone(type metadata accessor for ShortcutsAccessoryPickerViewController());
  v8 = ShortcutsAccessoryPickerViewController.init(home:configuration:)(homeCopy, &v10);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20CFF09FC();

  return v6;
}

- (void)configureWithDefaultSelectionController
{
  selfCopy = self;
  sub_20CFF0E34();
}

- (id)getServices
{
  selfCopy = self;
  sub_20CFF0F54();

  sub_20CECF940(0, &qword_27C81AEC0);
  sub_20CFF1C68();
  v3 = sub_20D567CD8();

  return v3;
}

- (void)setServices:(id)services
{
  sub_20CECF940(0, &qword_27C81AEC0);
  sub_20CFF1C68();
  v4 = sub_20D567D08();
  v5 = OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController;
  swift_beginAccess();
  if (*(&self->super.super.super.super.super.super.isa + v5))
  {
    _s26DefaultSelectionControllerCMa();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      *(v6 + OBJC_IVAR____TtCC6HomeUI38ShortcutsAccessoryPickerViewController26DefaultSelectionController_services) = v4;
    }
  }
}

- (HUShortcutsAccessoryPickerViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)manager
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end