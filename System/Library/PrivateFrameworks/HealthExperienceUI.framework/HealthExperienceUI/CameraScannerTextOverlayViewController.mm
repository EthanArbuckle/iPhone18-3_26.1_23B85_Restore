@interface CameraScannerTextOverlayViewController
- (_TtC18HealthExperienceUI38CameraScannerTextOverlayViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI38CameraScannerTextOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation CameraScannerTextOverlayViewController

- (_TtC18HealthExperienceUI38CameraScannerTextOverlayViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI38CameraScannerTextOverlayViewController_showsBackground) = 1;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CameraScannerTextOverlayViewController();
  v2 = v6.receiver;
  [(CameraScannerTextOverlayViewController *)&v6 viewDidLoad];
  sub_1BA48D70C();
  sub_1BA0C415C();
  view = [v2 view];
  if (view)
  {
    v4 = view;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    [v2 setOverrideUserInterfaceStyle_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18HealthExperienceUI38CameraScannerTextOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end