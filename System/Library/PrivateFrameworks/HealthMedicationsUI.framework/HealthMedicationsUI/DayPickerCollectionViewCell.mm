@interface DayPickerCollectionViewCell
- (_TtC19HealthMedicationsUI27DayPickerCollectionViewCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI27DayPickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)selectedDaysDidChange:(id)change;
@end

@implementation DayPickerCollectionViewCell

- (void)selectedDaysDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_228349600(changeCopy);
}

- (_TtC19HealthMedicationsUI27DayPickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DayPickerCollectionViewCell();
  return [(DayPickerCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI27DayPickerCollectionViewCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DayPickerCollectionViewCell();
  coderCopy = coder;
  v6 = [(DayPickerCollectionViewCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end