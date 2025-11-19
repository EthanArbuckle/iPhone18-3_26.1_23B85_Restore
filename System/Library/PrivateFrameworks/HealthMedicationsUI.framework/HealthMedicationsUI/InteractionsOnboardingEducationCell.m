@interface InteractionsOnboardingEducationCell
- (_TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell)initWithFrame:(CGRect)a3;
@end

@implementation InteractionsOnboardingEducationCell

- (_TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(InteractionsOnboardingEducationCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(InteractionsOnboardingEducationCell *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end