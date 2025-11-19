@interface MedicationsDayHistoryHeaderCell
- (_TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation MedicationsDayHistoryHeaderCell

- (_TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell____lazy_storage___titleLabel) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationsDayHistoryHeaderCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  v9 = self;
  sub_228177788();

  (*(v5 + 8))(v8, v4);
}

@end