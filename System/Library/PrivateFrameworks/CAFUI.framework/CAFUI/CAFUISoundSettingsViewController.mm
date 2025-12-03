@interface CAFUISoundSettingsViewController
- (_TtC5CAFUI32CAFUISoundSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_wheelChangedWithEvent:(id)event;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)segmentedControlChangedWithSender:(id)sender;
- (void)segmentedControlKnobSelectWithSender:(id)sender;
- (void)viewDidLoad;
@end

@implementation CAFUISoundSettingsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  CAFUISoundSettingsViewController.viewDidLoad()();
}

- (void)segmentedControlKnobSelectWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  specialized CAFUISoundSettingsViewController.segmentedControlKnobSelect(sender:)();
}

- (void)segmentedControlChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  specialized CAFUISoundSettingsViewController.changePage(index:animated:)([senderCopy selectedSegmentIndex]);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  CAFUISoundSettingsViewController.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = event;
  CAFUISoundSettingsViewController._wheelChanged(with:)(v9);
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  CAFUISoundSettingsViewController.pressesEnded(_:with:)(v6, event);
}

- (_TtC5CAFUI32CAFUISoundSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end