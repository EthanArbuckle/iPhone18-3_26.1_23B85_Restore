@interface DCCaptureControlsOverlayViewController
- (BOOL)doneButtonShowing;
- (DCCaptureControlsOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP14DocumentCamera46DCCaptureControlsOverlayViewControllerDelegate_)delegate;
- (void)autoButtonTapped;
- (void)autoModeButtonTapped;
- (void)captureButtonTapped;
- (void)closeButtonTapped;
- (void)manualModeButtonTapped;
- (void)setCaptureButtonEnabled:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setDoneButtonShowing:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation DCCaptureControlsOverlayViewController

- (_TtP14DocumentCamera46DCCaptureControlsOverlayViewControllerDelegate_)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___DCCaptureControlsOverlayViewController_delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)doneButtonShowing
{
  v3 = OBJC_IVAR___DCCaptureControlsOverlayViewController_doneButtonShowing;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDoneButtonShowing:(BOOL)a3
{
  v4 = self;
  sub_2492E00C8(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2492E0474();
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = self;
  sub_2492E033C(v9);
  v7 = v10;
  v8 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v8 + 32))(v6, a3, v7, v8, a4);

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CaptureControlsOverlayViewController();
  v4 = v5.receiver;
  [(DCCaptureControlsOverlayViewController *)&v5 viewWillAppear:v3];
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
  v2 = self;
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
    v5 = self;
  }

  sub_2492E1720();
}

- (void)autoModeButtonTapped
{
  v2 = self;
  sub_2492E1608(1);
}

- (void)manualModeButtonTapped
{
  v2 = self;
  sub_2492E1608(0);
}

- (void)setCaptureButtonEnabled:(BOOL)a3
{
  v4 = self;
  sub_2492E266C(a3);
}

- (DCCaptureControlsOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_2492ECA24();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return CaptureControlsOverlayViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end