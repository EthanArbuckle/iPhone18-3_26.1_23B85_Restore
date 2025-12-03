@interface MedicationLogDetailsTimeView
- (_TtC19HealthMedicationsUI28MedicationLogDetailsTimeView)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI28MedicationLogDetailsTimeView)initWithFrame:(CGRect)frame;
@end

@implementation MedicationLogDetailsTimeView

- (_TtC19HealthMedicationsUI28MedicationLogDetailsTimeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___timeFormatter) = 0;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_logDate;
  v9 = sub_22838F440();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_viewModel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___logTimeLabel) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MedicationLogDetailsTimeView(0);
  height = [(MedicationLogDetailsTimeView *)&v12 initWithFrame:x, y, width, height];
  sub_22825C2A4();

  return height;
}

- (_TtC19HealthMedicationsUI28MedicationLogDetailsTimeView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___timeFormatter) = 0;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_logDate;
  v5 = sub_22838F440();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_viewModel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___logTimeLabel) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end