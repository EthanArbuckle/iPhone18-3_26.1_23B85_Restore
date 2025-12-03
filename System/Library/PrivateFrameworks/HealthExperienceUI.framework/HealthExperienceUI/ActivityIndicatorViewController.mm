@interface ActivityIndicatorViewController
- (_TtC18HealthExperienceUI31ActivityIndicatorViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI31ActivityIndicatorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapCancel:(id)cancel;
- (void)viewDidLoad;
@end

@implementation ActivityIndicatorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA16064C();
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(ActivityIndicatorViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI31ActivityIndicatorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem) = 0;
    bundleCopy = bundle;
    v7 = sub_1BA4A6758();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ActivityIndicatorViewController();
  v9 = [(ActivityIndicatorViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18HealthExperienceUI31ActivityIndicatorViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivityIndicatorViewController();
  coderCopy = coder;
  v5 = [(ActivityIndicatorViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end