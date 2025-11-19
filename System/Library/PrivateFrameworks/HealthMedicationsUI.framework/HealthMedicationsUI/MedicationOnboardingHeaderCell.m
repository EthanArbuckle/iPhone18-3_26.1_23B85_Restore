@interface MedicationOnboardingHeaderCell
- (_TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell)initWithFrame:(CGRect)a3;
@end

@implementation MedicationOnboardingHeaderCell

- (_TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_headerView) = 0;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_item;
  v9 = type metadata accessor for MedicationOnboardingHeaderCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v14.receiver = self;
  v14.super_class = v9;
  v10 = [(MedicationOnboardingHeaderCell *)&v14 initWithFrame:x, y, width, height];
  v11 = [(MedicationOnboardingHeaderCell *)v10 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor_];

  return v10;
}

- (_TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_headerView) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end