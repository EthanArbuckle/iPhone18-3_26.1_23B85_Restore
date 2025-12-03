@interface AppViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC16MagnifierSupport17AppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_dismissActivityCustomizationPane;
- (void)_dismissActivityCustomizationPaneWithText;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
- (void)applicationDidRemoveDeactivationReasonWithNotification:(id)notification;
- (void)applicationWillAddDeactivationReasonWithNotification:(id)notification;
- (void)deviceOrientationDidChange:(id)change;
- (void)didLongPressToFocus:(id)focus;
- (void)didPanPreviewView:(id)view;
- (void)didPinchToZoom:(id)zoom;
- (void)didTapCloseImageWellButton:(id)button;
- (void)didTapToChangeFocus:(id)focus;
- (void)loadView;
- (void)openDetectionSettings:(id)settings;
- (void)stopSpeechForVoiceOverFocusChange;
- (void)toggleAVTorchForApplicationDeactivation:(BOOL)deactivation;
- (void)updateAppearanceForReduceTransparency:(id)transparency;
- (void)userDidEndMutliShotMode:(id)mode;
- (void)userDidExitDetectionMode:(id)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation AppViewController

- (void)toggleAVTorchForApplicationDeactivation:(BOOL)deactivation
{
  selfCopy = self;
  sub_257BD9C78(deactivation);
}

- (void)stopSpeechForVoiceOverFocusChange
{
  selfCopy = self;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    sub_257CC1318();
  }
}

- (void)userDidExitDetectionMode:(id)mode
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

- (void)openDetectionSettings:(id)settings
{
  selfCopy = self;
  sub_257D3A8DC();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;
  sub_257ECC3F0();
  sub_257DB0FF4(sub_257D46F1C, v5);

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for AppViewController();
  [(AppViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)_dismissActivityCustomizationPaneWithText
{
  selfCopy = self;
  sub_257DF6D30();
}

- (void)_dismissActivityCustomizationPane
{
  selfCopy = self;
  sub_257DF7144();
}

- (void)loadView
{
  selfCopy = self;
  sub_257E01458();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257E01ACC();
}

- (void)didTapCloseImageWellButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_257E2B234();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_257E07834();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257E07D5C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257E088B8(appear);
}

- (void)userDidEndMutliShotMode:(id)mode
{
  v4 = qword_281544FE0;
  modeCopy = mode;
  selfCopy = self;
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

- (void)updateAppearanceForReduceTransparency:(id)transparency
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (transparency)
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

  selfCopy = self;
  sub_257E1A15C();

  sub_257BE4084(v7, &qword_27F8F9E30);
}

- (void)deviceOrientationDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_257E2AE58();
}

- (void)didPanPreviewView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_257E1CC7C(viewCopy);
}

- (void)didTapToChangeFocus:(id)focus
{
  focusCopy = focus;
  selfCopy = self;
  sub_257E1D534(focusCopy);
}

- (void)didLongPressToFocus:(id)focus
{
  focusCopy = focus;
  selfCopy = self;
  sub_257E1DE0C(focusCopy);
}

- (void)didPinchToZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  sub_257E1E2F8(zoomCopy);
}

- (_TtC16MagnifierSupport17AppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_257E22208(beginCopy);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_257E224B8(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (void)applicationWillAddDeactivationReasonWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_257E23118(notificationCopy);
}

- (void)applicationDidRemoveDeactivationReasonWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_257E24164(notificationCopy);
}

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  interactionCopy = interaction;
  actionCopy = action;
  selfCopy = self;
  sub_257E2B8D8(actionCopy);
}

@end