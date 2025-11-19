@interface HUShortcutsAccessoryPickerViewController
- (HUShortcutsAccessoryPickerViewController)initWithHome:(id)a3 configuration:(id)a4;
- (HUShortcutsAccessoryPickerViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)getServices;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (void)configureWithDefaultSelectionController;
- (void)setServices:(id)a3;
@end

@implementation HUShortcutsAccessoryPickerViewController

- (HUShortcutsAccessoryPickerViewController)initWithHome:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  HUShortcutsTriggerViewAccessoryPickerConfiguration.buildConfiguration()(&v10);
  v7 = objc_allocWithZone(type metadata accessor for ShortcutsAccessoryPickerViewController());
  v8 = ShortcutsAccessoryPickerViewController.init(home:configuration:)(v5, &v10);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20CFF09FC();

  return v6;
}

- (void)configureWithDefaultSelectionController
{
  v2 = self;
  sub_20CFF0E34();
}

- (id)getServices
{
  v2 = self;
  sub_20CFF0F54();

  sub_20CECF940(0, &qword_27C81AEC0);
  sub_20CFF1C68();
  v3 = sub_20D567CD8();

  return v3;
}

- (void)setServices:(id)a3
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

- (HUShortcutsAccessoryPickerViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end