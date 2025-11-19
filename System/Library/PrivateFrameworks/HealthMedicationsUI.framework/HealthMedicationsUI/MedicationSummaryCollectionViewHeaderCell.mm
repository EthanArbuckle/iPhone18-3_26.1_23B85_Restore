@interface MedicationSummaryCollectionViewHeaderCell
- (_TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell)initWithFrame:(CGRect)a3;
@end

@implementation MedicationSummaryCollectionViewHeaderCell

- (_TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = (self + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary);
  *v8 = 0u;
  v8[1] = 0u;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummaryView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MedicationSummaryCollectionViewHeaderCell();
  return [(MedicationSummaryCollectionViewHeaderCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = (self + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummary);
  *v4 = 0u;
  v4[1] = 0u;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationSummaryCollectionViewHeaderCell_medicationSummaryView) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end