@interface MedicationLogDetailsHeader
- (_TtC19HealthMedicationsUI26MedicationLogDetailsHeader)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI26MedicationLogDetailsHeader)initWithFrame:(CGRect)frame;
@end

@implementation MedicationLogDetailsHeader

- (_TtC19HealthMedicationsUI26MedicationLogDetailsHeader)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader____lazy_storage___formStrengthLabel) = 0;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationLogDetailsHeader_item;
  v9 = type metadata accessor for MedicationLogDetailsHeader();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(MedicationLogDetailsHeader *)&v12 initWithFrame:x, y, width, height];
  sub_2282BCAA0();

  return height;
}

- (_TtC19HealthMedicationsUI26MedicationLogDetailsHeader)initWithCoder:(id)coder
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