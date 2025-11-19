@interface MedicationEducationAndComponentsItemCell
- (_TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell)initWithFrame:(CGRect)a3;
@end

@implementation MedicationEducationAndComponentsItemCell

- (_TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___educationLabel) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MedicationEducationAndComponentsItemCell();
  return [(MedicationEducationAndComponentsItemCell *)&v9 initWithFrame:x, y, width, height];
}

@end