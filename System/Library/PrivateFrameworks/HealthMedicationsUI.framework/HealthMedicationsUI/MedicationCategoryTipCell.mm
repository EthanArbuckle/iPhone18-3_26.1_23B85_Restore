@interface MedicationCategoryTipCell
- (_TtC19HealthMedicationsUI25MedicationCategoryTipCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI25MedicationCategoryTipCell)initWithFrame:(CGRect)frame;
@end

@implementation MedicationCategoryTipCell

- (_TtC19HealthMedicationsUI25MedicationCategoryTipCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_tipView) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for MedicationCategoryTipCell();
  height = [(MedicationCategoryTipCell *)&v11 initWithFrame:x, y, width, height];
  sub_22838F7B0();
  v9 = *MEMORY[0x277CDA138];
  sub_228392B00();

  return height;
}

- (_TtC19HealthMedicationsUI25MedicationCategoryTipCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_tipView) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end