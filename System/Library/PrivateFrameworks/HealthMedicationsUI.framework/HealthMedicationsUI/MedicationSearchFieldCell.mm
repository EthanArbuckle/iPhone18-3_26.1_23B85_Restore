@interface MedicationSearchFieldCell
- (_TtC19HealthMedicationsUI25MedicationSearchFieldCell)initWithCoder:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
@end

@implementation MedicationSearchFieldCell

- (_TtC19HealthMedicationsUI25MedicationSearchFieldCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationSearchFieldCell____lazy_storage___searchBar) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_228289FA0(v4);
}

@end