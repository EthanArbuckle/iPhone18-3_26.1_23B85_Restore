@interface ActivityIndicatorViewController
- (_TtC18HealthExperienceUI31ActivityIndicatorViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI31ActivityIndicatorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation ActivityIndicatorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA16064C();
}

- (void)didTapCancel:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(ActivityIndicatorViewController *)v4 dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI31ActivityIndicatorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem) = 0;
    v6 = a4;
    v7 = sub_1BA4A6758();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ActivityIndicatorViewController();
  v9 = [(ActivityIndicatorViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18HealthExperienceUI31ActivityIndicatorViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivityIndicatorViewController();
  v4 = a3;
  v5 = [(ActivityIndicatorViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end