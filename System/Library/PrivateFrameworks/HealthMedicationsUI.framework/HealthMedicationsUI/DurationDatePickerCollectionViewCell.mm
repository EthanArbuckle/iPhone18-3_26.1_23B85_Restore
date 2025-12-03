@interface DurationDatePickerCollectionViewCell
- (_TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)pickerDateChanged:(id)changed;
@end

@implementation DurationDatePickerCollectionViewCell

- (_TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel) = 0;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker;
  *(&self->super.super.super.super.super.super.isa + v9) = sub_22822CC6C();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints) = MEMORY[0x277D84F90];
  v12.receiver = self;
  v12.super_class = type metadata accessor for DurationDatePickerCollectionViewCell();
  height = [(DurationDatePickerCollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  sub_22822CFDC();

  return height;
}

- (_TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell____lazy_storage___titleLabel) = 0;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_datePicker;
  *(&self->super.super.super.super.super.super.isa + v5) = sub_22822CC6C();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI36DurationDatePickerCollectionViewCell_currentLayoutConstraints) = MEMORY[0x277D84F90];
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)pickerDateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_22822D9EC(changedCopy);
}

@end