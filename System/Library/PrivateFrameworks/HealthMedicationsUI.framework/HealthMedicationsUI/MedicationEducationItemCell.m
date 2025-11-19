@interface MedicationEducationItemCell
- (_TtC19HealthMedicationsUI27MedicationEducationItemCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI27MedicationEducationItemCell)initWithFrame:(CGRect)a3;
@end

@implementation MedicationEducationItemCell

- (_TtC19HealthMedicationsUI27MedicationEducationItemCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MedicationEducationItemCell();
  return [(MedicationEducationItemCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI27MedicationEducationItemCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___primaryLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationEducationItemCell____lazy_storage___attributionLabel) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MedicationEducationItemCell();
  v5 = a3;
  v6 = [(MedicationEducationItemCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end