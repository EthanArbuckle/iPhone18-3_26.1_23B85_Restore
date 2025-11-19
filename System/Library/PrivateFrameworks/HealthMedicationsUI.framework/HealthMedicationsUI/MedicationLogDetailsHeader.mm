@interface MedicationLogDetailsHeader
- (_TtC19HealthMedicationsUI26MedicationLogDetailsHeader)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI26MedicationLogDetailsHeader)initWithFrame:(CGRect)a3;
@end

@implementation MedicationLogDetailsHeader

- (_TtC19HealthMedicationsUI26MedicationLogDetailsHeader)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___formStrengthLabel) = 0;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader_item;
  v9 = type metadata accessor for MedicationLogDetailsHeader();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(MedicationLogDetailsHeader *)&v12 initWithFrame:x, y, width, height];
  sub_2282BCAA0();

  return v10;
}

- (_TtC19HealthMedicationsUI26MedicationLogDetailsHeader)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___formStrengthLabel) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end