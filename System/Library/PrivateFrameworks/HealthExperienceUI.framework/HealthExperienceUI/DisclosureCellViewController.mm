@interface DisclosureCellViewController
- (_TtC18HealthExperienceUI28DisclosureCellViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI28DisclosureCellViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation DisclosureCellViewController

- (_TtC18HealthExperienceUI28DisclosureCellViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView) = 0;
    bundleCopy = bundle;
    v7 = sub_1BA4A6758();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DisclosureCellViewController();
  v9 = [(CellWithAccessoryViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18HealthExperienceUI28DisclosureCellViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DisclosureCellViewController();
  coderCopy = coder;
  v5 = [(CellWithAccessoryViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end