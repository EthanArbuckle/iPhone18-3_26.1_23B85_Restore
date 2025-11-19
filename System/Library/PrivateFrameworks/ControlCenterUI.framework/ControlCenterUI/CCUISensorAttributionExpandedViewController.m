@interface CCUISensorAttributionExpandedViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)hasGameModeActivityOnly;
- (CCUISensorAttributionExpandedViewController)initWithModuleInstanceManager:(id)a3;
- (CCUISensorAttributionExpandedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)a3;
- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)a3;
- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)a3;
- (NSString)audioVideoHeaderTrailingText;
- (_TtC15ControlCenterUI32CCUIGameModeActivityDataProvider)gameModeActivityDataProvider;
- (id)compactModeSourceViewForContentModuleContainerViewController:(id)a3;
- (void)recognizedDismissTapGesture;
- (void)sensorAttributionsChanged:(id)a3;
- (void)setAudioControlsEnabled:(BOOL)a3 videoControlsEnabled:(BOOL)a4;
- (void)setAudioVideoHeaderTrailingText:(id)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setGameModeActivityDataProvider:(id)a3;
- (void)viewDidLoad;
@end

@implementation CCUISensorAttributionExpandedViewController

- (CCUISensorAttributionExpandedViewController)initWithModuleInstanceManager:(id)a3
{
  swift_unknownObjectRetain();
  sub_21EAA9320();
  swift_unknownObjectRelease();
  SensorAttributionExpandedViewController.init(moduleInstanceManager:)(&v4);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21EA96D5C();
}

- (void)recognizedDismissTapGesture
{
  swift_unknownObjectWeakInit();
  sub_21EA9A290(v2, 0, 1);
  MEMORY[0x223D68630](v2);
}

- (void)setAudioControlsEnabled:(BOOL)a3 videoControlsEnabled:(BOOL)a4
{
  v6 = self;
  sub_21EA99010(a3, a4);
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

- (void)setAudioVideoHeaderTrailingText:(id)a3
{
  if (a3)
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

- (void)setGameModeActivityDataProvider:(id)a3
{
  v5 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)hasGameModeActivityOnly
{
  v2 = self;
  v3 = sub_21EA99A84();

  return v3 & 1;
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_21EA99E7C(a3, a4);
}

- (void)sensorAttributionsChanged:(id)a3
{
  sub_21E9F8880(0, &qword_28125B790);
  sub_21E9F84D4();
  *(self + OBJC_IVAR___CCUISensorAttributionExpandedViewController_sensorActivityData) = sub_21EAA8F60();
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  sub_21EA9A9E8(top, left, bottom, right);
}

- (CCUISensorAttributionExpandedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = [v5 view];
  if (v7)
  {
    v8 = v7;
    v9 = *(v6 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackView);
    v10 = [v8 isDescendantOfView_];

    return v10 ^ 1;
  }

  else
  {

    return 1;
  }
}

- (id)compactModeSourceViewForContentModuleContainerViewController:(id)a3
{
  v3 = [(CCUISensorAttributionExpandedViewController *)self view];

  return v3;
}

- (CGRect)compactModeFrameForContentModuleContainerViewController:(id)a3
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

- (CGRect)expandedModeFrameForContentModuleContainerViewController:(id)a3
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

- (CGSize)controlCenterGridSizeForContentModuleContainerViewController:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end