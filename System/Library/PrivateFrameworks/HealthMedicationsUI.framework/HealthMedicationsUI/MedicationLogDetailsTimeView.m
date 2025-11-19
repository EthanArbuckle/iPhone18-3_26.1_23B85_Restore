@interface MedicationLogDetailsTimeView
- (_TtC19HealthMedicationsUI28MedicationLogDetailsTimeView)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI28MedicationLogDetailsTimeView)initWithFrame:(CGRect)a3;
@end

@implementation MedicationLogDetailsTimeView

- (_TtC19HealthMedicationsUI28MedicationLogDetailsTimeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___timeFormatter) = 0;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_logDate;
  v9 = sub_22838F440();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_viewModel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___logTimeLabel) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MedicationLogDetailsTimeView(0);
  v10 = [(MedicationLogDetailsTimeView *)&v12 initWithFrame:x, y, width, height];
  sub_22825C2A4();

  return v10;
}

- (_TtC19HealthMedicationsUI28MedicationLogDetailsTimeView)initWithCoder:(id)a3
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