@interface DCCaptureControlsOverlayViewController
- (BOOL)doneButtonShowing;
- (DCCaptureControlsOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP14DocumentCamera46DCCaptureControlsOverlayViewControllerDelegate_)delegate;
- (void)autoButtonTapped;
- (void)autoModeButtonTapped;
- (void)captureButtonTapped;
- (void)closeButtonTapped;
- (void)manualModeButtonTapped;
- (void)setCaptureButtonEnabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)setDoneButtonShowing:(BOOL)showing;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation DCCaptureControlsOverlayViewController

- (_TtP14DocumentCamera46DCCaptureControlsOverlayViewControllerDelegate_)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)doneButtonShowing
{
  v3 = OBJC_IVAR___DCCaptureControlsOverlayViewController_doneButtonShowing;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDoneButtonShowing:(BOOL)showing
{
  selfCopy = self;
  sub_2492E00C8(showing);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2492E0474();
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  selfCopy = self;
  sub_2492E033C(v9);
  v7 = v10;
  v8 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v8 + 32))(selfCopy, orientation, v7, v8, duration);

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CaptureControlsOverlayViewController();
  v4 = v5.receiver;
  [(DCCaptureControlsOverlayViewController *)&v5 viewWillAppear:appearCopy];
  [v4 setOverrideUserInterfaceStyle_];
}

- (void)closeButtonTapped
{
  v3 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  if (v4)
  {
    [v4 overlayCloseButtonTapped_];
  }
}

- (void)captureButtonTapped
{
  selfCopy = self;
  sub_2492E126C();
}

- (void)autoButtonTapped
{
  v3 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  if (v4)
  {
    [v4 overlayAutoButtonTapped_];
  }

  else
  {
    selfCopy = self;
  }

  sub_2492E1720();
}

- (void)autoModeButtonTapped
{
  selfCopy = self;
  sub_2492E1608(1);
}

- (void)manualModeButtonTapped
{
  selfCopy = self;
  sub_2492E1608(0);
}

- (void)setCaptureButtonEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_2492E266C(enabled);
}

- (DCCaptureControlsOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2492ECA24();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return CaptureControlsOverlayViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end