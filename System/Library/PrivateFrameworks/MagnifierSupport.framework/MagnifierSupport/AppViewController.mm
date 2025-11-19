@interface AppViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC16MagnifierSupport17AppViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_dismissActivityCustomizationPane;
- (void)_dismissActivityCustomizationPaneWithText;
- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5;
- (void)applicationDidRemoveDeactivationReasonWithNotification:(id)a3;
- (void)applicationWillAddDeactivationReasonWithNotification:(id)a3;
- (void)deviceOrientationDidChange:(id)a3;
- (void)didLongPressToFocus:(id)a3;
- (void)didPanPreviewView:(id)a3;
- (void)didPinchToZoom:(id)a3;
- (void)didTapCloseImageWellButton:(id)a3;
- (void)didTapToChangeFocus:(id)a3;
- (void)loadView;
- (void)openDetectionSettings:(id)a3;
- (void)stopSpeechForVoiceOverFocusChange;
- (void)toggleAVTorchForApplicationDeactivation:(BOOL)a3;
- (void)updateAppearanceForReduceTransparency:(id)a3;
- (void)userDidEndMutliShotMode:(id)a3;
- (void)userDidExitDetectionMode:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AppViewController

- (void)toggleAVTorchForApplicationDeactivation:(BOOL)a3
{
  v4 = self;
  sub_257BD9C78(a3);
}

- (void)stopSpeechForVoiceOverFocusChange
{
  v2 = self;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    sub_257CC1318();
  }
}

- (void)userDidExitDetectionMode:(id)a3
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  sub_257D719E4(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
}

- (void)openDetectionSettings:(id)a3
{
  v3 = self;
  sub_257D3A8DC();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = self;
  sub_257ECC3F0();
  sub_257DB0FF4(sub_257D46F1C, v5);

  v7.receiver = v6;
  v7.super_class = type metadata accessor for AppViewController();
  [(AppViewController *)&v7 viewWillDisappear:v3];
}

- (void)_dismissActivityCustomizationPaneWithText
{
  v2 = self;
  sub_257DF6D30();
}

- (void)_dismissActivityCustomizationPane
{
  v2 = self;
  sub_257DF7144();
}

- (void)loadView
{
  v2 = self;
  sub_257E01458();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_257E01ACC();
}

- (void)didTapCloseImageWellButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E2B234();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_257E07834();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_257E07D5C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_257E088B8(a3);
}

- (void)userDidEndMutliShotMode:(id)a3
{
  v4 = qword_281544FE0;
  v5 = a3;
  v6 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  sub_257C77614();
}

- (void)updateAppearanceForReduceTransparency:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    sub_257ECC7E0();
    v8 = sub_257ECC810();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_257ECC810();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = self;
  sub_257E1A15C();

  sub_257BE4084(v7, &qword_27F8F9E30);
}

- (void)deviceOrientationDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E2AE58();
}

- (void)didPanPreviewView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E1CC7C(v4);
}

- (void)didTapToChangeFocus:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E1D534(v4);
}

- (void)didLongPressToFocus:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E1DE0C(v4);
}

- (void)didPinchToZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E1E2F8(v4);
}

- (_TtC16MagnifierSupport17AppViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_257E22208(v4);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_257E224B8(v6, v7);

  return v9;
}

- (void)applicationWillAddDeactivationReasonWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E23118(v4);
}

- (void)applicationDidRemoveDeactivationReasonWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E24164(v4);
}

- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_257E2B8D8(v8);
}

@end