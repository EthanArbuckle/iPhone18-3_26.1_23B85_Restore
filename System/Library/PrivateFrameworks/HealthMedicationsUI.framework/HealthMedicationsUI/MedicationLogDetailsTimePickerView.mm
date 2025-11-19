@interface MedicationLogDetailsTimePickerView
- (_TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView)initWithFrame:(CGRect)a3;
- (void)logTimeChanged:(id)a3;
@end

@implementation MedicationLogDetailsTimePickerView

- (void)logTimeChanged:(id)a3
{
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = a3;
    v11 = self;
    v12 = [v10 date];
    sub_22838F3E0();

    sub_2282C4A24(v9);
    swift_unknownObjectRelease();
    (*(v6 + 8))(v9, v5);
  }
}

- (_TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_detailsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_viewModel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView____lazy_storage___logTimePicker) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MedicationLogDetailsTimePickerView();
  v8 = [(MedicationLogDetailsTimePickerView *)&v10 initWithFrame:x, y, width, height];
  sub_22818F670();

  return v8;
}

- (_TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_detailsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_viewModel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView____lazy_storage___logTimePicker) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end