@interface CAFUISoundSettingsViewController
- (_TtC5CAFUI32CAFUISoundSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)segmentedControlChangedWithSender:(id)a3;
- (void)segmentedControlKnobSelectWithSender:(id)a3;
- (void)viewDidLoad;
@end

@implementation CAFUISoundSettingsViewController

- (void)viewDidLoad
{
  v2 = self;
  CAFUISoundSettingsViewController.viewDidLoad()();
}

- (void)segmentedControlKnobSelectWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CAFUISoundSettingsViewController.segmentedControlKnobSelect(sender:)();
}

- (void)segmentedControlChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CAFUISoundSettingsViewController.changePage(index:animated:)([v4 selectedSegmentIndex]);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFUISoundSettingsViewController.didUpdateFocus(in:with:)(v6, v7);
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  CAFUISoundSettingsViewController._wheelChanged(with:)(v9);
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  CAFUISoundSettingsViewController.pressesEnded(_:with:)(v6, a4);
}

- (_TtC5CAFUI32CAFUISoundSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end