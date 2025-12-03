@interface MedicationOnboardingHeaderCell
- (_TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell)initWithFrame:(CGRect)frame;
@end

@implementation MedicationOnboardingHeaderCell

- (_TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_headerView) = 0;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_item;
  v9 = type metadata accessor for MedicationOnboardingHeaderCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v14.receiver = self;
  v14.super_class = v9;
  height = [(MedicationOnboardingHeaderCell *)&v14 initWithFrame:x, y, width, height];
  contentView = [(MedicationOnboardingHeaderCell *)height contentView];
  systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
  [contentView setBackgroundColor_];

  return height;
}

- (_TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell)initWithCoder:(id)coder
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