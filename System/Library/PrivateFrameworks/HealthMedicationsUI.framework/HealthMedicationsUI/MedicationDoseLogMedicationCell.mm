@interface MedicationDoseLogMedicationCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell)initWithCoder:(id)coder;
@end

@implementation MedicationDoseLogMedicationCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  [(MedicationDoseLogMedicationCell *)selfCopy layoutIfNeeded];
  v18.receiver = selfCopy;
  v18.super_class = type metadata accessor for MedicationDoseLogMedicationCell();
  *&v10 = priority;
  *&v11 = fittingPriority;
  [(MedicationDoseLogMedicationCell *)&v18 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (_TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell)initWithCoder:(id)coder
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