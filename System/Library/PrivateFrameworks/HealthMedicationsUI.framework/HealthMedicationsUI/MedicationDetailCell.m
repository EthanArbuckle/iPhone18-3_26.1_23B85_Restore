@interface MedicationDetailCell
- (_TtC19HealthMedicationsUI20MedicationDetailCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI20MedicationDetailCell)initWithFrame:(CGRect)a3;
@end

@implementation MedicationDetailCell

- (_TtC19HealthMedicationsUI20MedicationDetailCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___medicationNameFormLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___strengthLabel) = 0;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell_item;
  v9 = type metadata accessor for MedicationDetailCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(MedicationDetailCell *)&v12 initWithFrame:x, y, width, height];
  sub_228269FD0();

  return v10;
}

- (_TtC19HealthMedicationsUI20MedicationDetailCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___medicationNameFormLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___strengthLabel) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end