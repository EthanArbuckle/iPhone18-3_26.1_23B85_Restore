@interface ClockFaceViewController
- (_TtC11ClockPoster23ClockFaceViewController)initWithCoder:(id)coder;
- (_TtC11ClockPoster23ClockFaceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation ClockFaceViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClockFaceViewController();
  v2 = v3.receiver;
  [(ClockFaceViewController *)&v3 viewDidLoad];
  [v2 setOverrideUserInterfaceStyle_];
}

- (_TtC11ClockPoster23ClockFaceViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_canAnimateRedMode) = 0;
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (_TtC11ClockPoster23ClockFaceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end