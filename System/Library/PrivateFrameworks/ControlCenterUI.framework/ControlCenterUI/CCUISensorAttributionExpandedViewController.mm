@interface CCUISensorAttributionExpandedViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)hasGameModeActivityOnly;
- (CCUISensorAttributionExpandedViewController)initWithModuleInstanceManager:(id)manager;
- (CCUISensorAttributionExpandedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)controller;
- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)controller;
- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)controller;
- (NSString)audioVideoHeaderTrailingText;
- (_TtC15ControlCenterUI32CCUIGameModeActivityDataProvider)gameModeActivityDataProvider;
- (id)compactModeSourceViewForContentModuleContainerViewController:(id)controller;
- (void)recognizedDismissTapGesture;
- (void)sensorAttributionsChanged:(id)changed;
- (void)setAudioControlsEnabled:(BOOL)enabled videoControlsEnabled:(BOOL)controlsEnabled;
- (void)setAudioVideoHeaderTrailingText:(id)text;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setGameModeActivityDataProvider:(id)provider;
- (void)viewDidLoad;
@end

@implementation CCUISensorAttributionExpandedViewController

- (CCUISensorAttributionExpandedViewController)initWithModuleInstanceManager:(id)manager
{
  swift_unknownObjectRetain();
  sub_21EAA9320();
  swift_unknownObjectRelease();
  SensorAttributionExpandedViewController.init(moduleInstanceManager:)(&v4);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21EA96D5C();
}

- (void)recognizedDismissTapGesture
{
  swift_unknownObjectWeakInit();
  sub_21EA9A290(v2, 0, 1);
  MEMORY[0x223D68630](v2);
}

- (void)setAudioControlsEnabled:(BOOL)enabled videoControlsEnabled:(BOOL)controlsEnabled
{
  selfCopy = self;
  sub_21EA99010(enabled, controlsEnabled);
}

- (NSString)audioVideoHeaderTrailingText
{
  v2 = self + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioVideoHeaderTrailingText;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_21EAA8DC0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioVideoHeaderTrailingText:(id)text
{
  if (text)
  {
    v4 = sub_21EAA8E00();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioVideoHeaderTrailingText);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC15ControlCenterUI32CCUIGameModeActivityDataProvider)gameModeActivityDataProvider
{
  v3 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGameModeActivityDataProvider:(id)provider
{
  v5 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = provider;
  providerCopy = provider;
}

- (BOOL)hasGameModeActivityOnly
{
  selfCopy = self;
  v3 = sub_21EA99A84();

  return v3 & 1;
}

- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated
{
  selfCopy = self;
  sub_21EA99E7C(expanded, animated);
}

- (void)sensorAttributionsChanged:(id)changed
{
  sub_21E9F8880(0, &qword_28125B790);
  sub_21E9F84D4();
  *(self + OBJC_IVAR___CCUISensorAttributionExpandedViewController_sensorActivityData) = sub_21EAA8F60();
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  sub_21EA9A9E8(top, left, bottom, right);
}

- (CCUISensorAttributionExpandedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  selfCopy = self;
  view = [touchCopy view];
  if (view)
  {
    v8 = view;
    v9 = *(selfCopy + OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackView);
    isDescendantOfView_ = [v8 isDescendantOfView_];

    return isDescendantOfView_ ^ 1;
  }

  else
  {

    return 1;
  }
}

- (id)compactModeSourceViewForContentModuleContainerViewController:(id)controller
{
  view = [(CCUISensorAttributionExpandedViewController *)self view];

  return view;
}

- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)controller
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)controller
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)controller
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end