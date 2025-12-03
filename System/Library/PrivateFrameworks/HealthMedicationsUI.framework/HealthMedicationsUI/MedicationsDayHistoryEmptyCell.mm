@interface MedicationsDayHistoryEmptyCell
- (_TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell)initWithFrame:(CGRect)frame;
@end

@implementation MedicationsDayHistoryEmptyCell

- (_TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell_item;
  v9 = type metadata accessor for MedicationsDayHistoryEmptyCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(MedicationsDayHistoryEmptyCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MedicationsDayHistoryEmptyCell();
  coderCopy = coder;
  v6 = [(MedicationsDayHistoryEmptyCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end