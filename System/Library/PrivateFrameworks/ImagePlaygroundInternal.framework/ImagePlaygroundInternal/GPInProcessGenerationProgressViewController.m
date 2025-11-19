@interface GPInProcessGenerationProgressViewController
- (GPInProcessGenerationProgressViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)transitionToImageDuration;
- (float)progress;
- (float)rampSize;
- (void)setIsAnimating:(BOOL)a3;
- (void)setIsShowingError:(BOOL)a3;
- (void)setProgress:(float)a3;
- (void)setRampSize:(float)a3;
- (void)setTransitionToImageDuration:(double)a3;
- (void)transitionToFinalImage;
- (void)transitionToFinalImage:(id)a3;
- (void)transitionToGeneratingState;
- (void)viewDidLoad;
@end

@implementation GPInProcessGenerationProgressViewController

- (void)setIsAnimating:(BOOL)a3
{
  (*(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel))[OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused] = !a3;
  v3 = self;
  sub_1D275746C();
}

- (void)setIsShowingError:(BOOL)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = a3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = self;
  sub_1D2870F78();
  sub_1D2758420(v4, sub_1D245E894, v5);
}

- (float)rampSize
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  swift_getKeyPath();
  sub_1D2799258(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  v4 = self;
  sub_1D28719E8();

  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize);

  return v5;
}

- (void)setRampSize:(float)a3
{
  v4 = self;
  GPInProcessGenerationProgressViewController.rampSize.setter(a3);
}

- (double)transitionToImageDuration
{
  v3 = OBJC_IVAR___GPInProcessGenerationProgressViewController_transitionToImageDuration;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTransitionToImageDuration:(double)a3
{
  v5 = OBJC_IVAR___GPInProcessGenerationProgressViewController_transitionToImageDuration;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v8 = self;
  sub_1D2758420(v6, sub_1D2799308, v7);
}

- (void)transitionToGeneratingState
{
  v2 = self;
  GPInProcessGenerationProgressViewController.transitionToGeneratingState()();
}

- (void)transitionToFinalImage
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  v3 = self;
  sub_1D277E434(4uLL, 128, 1, v2);
}

- (void)transitionToFinalImage:(id)a3
{
  v5 = OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel;
  v7 = a3;
  v6 = self;
  sub_1D277DED8(a3);
  sub_1D277E434(4uLL, 128, 1, *(&self->super.super.super.isa + v5));
}

- (float)progress
{
  v2 = (self + OBJC_IVAR___GPInProcessGenerationProgressViewController_progress);
  swift_beginAccess();
  return *v2;
}

- (void)setProgress:(float)a3
{
  v4 = (self + OBJC_IVAR___GPInProcessGenerationProgressViewController_progress);
  swift_beginAccess();
  *v4 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  GPInProcessGenerationProgressViewController.viewDidLoad()();
}

- (GPInProcessGenerationProgressViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end