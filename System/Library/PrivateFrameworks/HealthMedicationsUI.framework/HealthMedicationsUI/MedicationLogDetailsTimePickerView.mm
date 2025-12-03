@interface MedicationLogDetailsTimePickerView
- (_TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView)initWithFrame:(CGRect)frame;
- (void)logTimeChanged:(id)changed;
@end

@implementation MedicationLogDetailsTimePickerView

- (void)logTimeChanged:(id)changed
{
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    changedCopy = changed;
    selfCopy = self;
    date = [changedCopy date];
    sub_22838F3E0();

    sub_2282C4A24(v9);
    swift_unknownObjectRelease();
    (*(v6 + 8))(v9, v5);
  }
}

- (_TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_detailsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_viewModel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView____lazy_storage___logTimePicker) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MedicationLogDetailsTimePickerView();
  height = [(MedicationLogDetailsTimePickerView *)&v10 initWithFrame:x, y, width, height];
  sub_22818F670();

  return height;
}

- (_TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView)initWithCoder:(id)coder
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