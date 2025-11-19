@interface MedicationDoseLogMedicationCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell)initWithCoder:(id)a3;
@end

@implementation MedicationDoseLogMedicationCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  [(MedicationDoseLogMedicationCell *)v9 layoutIfNeeded];
  v18.receiver = v9;
  v18.super_class = type metadata accessor for MedicationDoseLogMedicationCell();
  *&v10 = a4;
  *&v11 = a5;
  [(MedicationDoseLogMedicationCell *)&v18 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (_TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end