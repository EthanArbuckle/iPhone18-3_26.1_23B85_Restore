@interface GPInProcessGenerationProgressViewController
- (GPInProcessGenerationProgressViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)transitionToImageDuration;
- (float)progress;
- (float)rampSize;
- (void)setIsAnimating:(BOOL)animating;
- (void)setIsShowingError:(BOOL)error;
- (void)setProgress:(float)progress;
- (void)setRampSize:(float)size;
- (void)setTransitionToImageDuration:(double)duration;
- (void)transitionToFinalImage;
- (void)transitionToFinalImage:(id)image;
- (void)transitionToGeneratingState;
- (void)viewDidLoad;
@end

@implementation GPInProcessGenerationProgressViewController

- (void)setIsAnimating:(BOOL)animating
{
  (*(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel))[OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused] = !animating;
  selfCopy = self;
  sub_1D275746C();
}

- (void)setIsShowingError:(BOOL)error
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = error;
  v5 = swift_allocObject();
  swift_weakInit();
  selfCopy = self;
  sub_1D2870F78();
  sub_1D2758420(v4, sub_1D245E894, v5);
}

- (float)rampSize
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  swift_getKeyPath();
  sub_1D2799258(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  selfCopy = self;
  sub_1D28719E8();

  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize);

  return v5;
}

- (void)setRampSize:(float)size
{
  selfCopy = self;
  GPInProcessGenerationProgressViewController.rampSize.setter(size);
}

- (double)transitionToImageDuration
{
  v3 = OBJC_IVAR___GPInProcessGenerationProgressViewController_transitionToImageDuration;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTransitionToImageDuration:(double)duration
{
  v5 = OBJC_IVAR___GPInProcessGenerationProgressViewController_transitionToImageDuration;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = duration;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  v7 = swift_allocObject();
  *(v7 + 16) = duration;
  selfCopy = self;
  sub_1D2758420(v6, sub_1D2799308, v7);
}

- (void)transitionToGeneratingState
{
  selfCopy = self;
  GPInProcessGenerationProgressViewController.transitionToGeneratingState()();
}

- (void)transitionToFinalImage
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  selfCopy = self;
  sub_1D277E434(4uLL, 128, 1, v2);
}

- (void)transitionToFinalImage:(id)image
{
  v5 = OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel;
  imageCopy = image;
  selfCopy = self;
  sub_1D277DED8(image);
  sub_1D277E434(4uLL, 128, 1, *(&self->super.super.super.isa + v5));
}

- (float)progress
{
  v2 = (self + OBJC_IVAR___GPInProcessGenerationProgressViewController_progress);
  swift_beginAccess();
  return *v2;
}

- (void)setProgress:(float)progress
{
  v4 = (self + OBJC_IVAR___GPInProcessGenerationProgressViewController_progress);
  swift_beginAccess();
  *v4 = progress;
}

- (void)viewDidLoad
{
  selfCopy = self;
  GPInProcessGenerationProgressViewController.viewDidLoad()();
}

- (GPInProcessGenerationProgressViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end