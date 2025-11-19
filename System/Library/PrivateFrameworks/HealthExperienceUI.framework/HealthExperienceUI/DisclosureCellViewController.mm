@interface DisclosureCellViewController
- (_TtC18HealthExperienceUI28DisclosureCellViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI28DisclosureCellViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation DisclosureCellViewController

- (_TtC18HealthExperienceUI28DisclosureCellViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView) = 0;
    v6 = a4;
    v7 = sub_1BA4A6758();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DisclosureCellViewController();
  v9 = [(CellWithAccessoryViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18HealthExperienceUI28DisclosureCellViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___disclosureIndicator) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI28DisclosureCellViewController____lazy_storage___cellAccessoryView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DisclosureCellViewController();
  v4 = a3;
  v5 = [(CellWithAccessoryViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end