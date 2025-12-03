@interface AddMedicationView
- (_TtC19HealthMedicationsUI17AddMedicationView)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI17AddMedicationView)initWithFrame:(CGRect)frame;
@end

@implementation AddMedicationView

- (_TtC19HealthMedicationsUI17AddMedicationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___iconView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___detailLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AddMedicationView();
  height = [(AddMedicationView *)&v9 initWithFrame:x, y, width, height];
  sub_2281E1688();

  return height;
}

- (_TtC19HealthMedicationsUI17AddMedicationView)initWithCoder:(id)coder
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