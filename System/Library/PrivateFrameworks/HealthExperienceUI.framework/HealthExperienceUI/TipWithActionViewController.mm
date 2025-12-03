@interface TipWithActionViewController
- (_TtC18HealthExperienceUI27TipWithActionViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI27TipWithActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation TipWithActionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA14E8E0();
}

- (_TtC18HealthExperienceUI27TipWithActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = self + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView) = 0;
    bundleCopy = bundle;
    v8 = sub_1BA4A6758();
  }

  else
  {
    v9 = self + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 4) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView) = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for TipWithActionViewController();
  v11 = [(TipWithActionViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (_TtC18HealthExperienceUI27TipWithActionViewController)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController____lazy_storage___tileView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TipWithActionViewController();
  coderCopy = coder;
  v6 = [(TipWithActionViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end