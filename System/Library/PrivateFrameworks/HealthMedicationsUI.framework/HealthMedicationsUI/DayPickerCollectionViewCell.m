@interface DayPickerCollectionViewCell
- (_TtC19HealthMedicationsUI27DayPickerCollectionViewCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI27DayPickerCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)selectedDaysDidChange:(id)a3;
@end

@implementation DayPickerCollectionViewCell

- (void)selectedDaysDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_228349600(v4);
}

- (_TtC19HealthMedicationsUI27DayPickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DayPickerCollectionViewCell();
  return [(DayPickerCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI27DayPickerCollectionViewCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27DayPickerCollectionViewCell_dayPicker) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DayPickerCollectionViewCell();
  v5 = a3;
  v6 = [(DayPickerCollectionViewCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end