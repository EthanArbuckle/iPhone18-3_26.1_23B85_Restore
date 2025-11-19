@interface CameraScannerTextOverlayViewController
- (_TtC18HealthExperienceUI38CameraScannerTextOverlayViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI38CameraScannerTextOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation CameraScannerTextOverlayViewController

- (_TtC18HealthExperienceUI38CameraScannerTextOverlayViewController)initWithCoder:(id)a3
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
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    [v2 setOverrideUserInterfaceStyle_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18HealthExperienceUI38CameraScannerTextOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end