@interface AddMedicationView
- (_TtC19HealthMedicationsUI17AddMedicationView)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI17AddMedicationView)initWithFrame:(CGRect)a3;
@end

@implementation AddMedicationView

- (_TtC19HealthMedicationsUI17AddMedicationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___iconView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___detailLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AddMedicationView();
  v7 = [(AddMedicationView *)&v9 initWithFrame:x, y, width, height];
  sub_2281E1688();

  return v7;
}

- (_TtC19HealthMedicationsUI17AddMedicationView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___iconView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___detailLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end