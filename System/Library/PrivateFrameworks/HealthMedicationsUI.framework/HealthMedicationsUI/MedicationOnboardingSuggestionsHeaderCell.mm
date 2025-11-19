@interface MedicationOnboardingSuggestionsHeaderCell
- (_TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell)initWithFrame:(CGRect)a3;
@end

@implementation MedicationOnboardingSuggestionsHeaderCell

- (_TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_headerView) = 0;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  v9 = type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(MedicationOnboardingSuggestionsHeaderCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_headerView) = 0;
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
  v5 = a3;
  v6 = [(MedicationOnboardingSuggestionsHeaderCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end