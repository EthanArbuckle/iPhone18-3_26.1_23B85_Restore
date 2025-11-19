@interface MedicationSearchCell
- (_TtC19HealthMedicationsUI20MedicationSearchCell)initWithCoder:(id)a3;
@end

@implementation MedicationSearchCell

- (_TtC19HealthMedicationsUI20MedicationSearchCell)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
  v5 = *MEMORY[0x277D12788];
  v9 = sub_228392000();
  v10 = v6;

  MEMORY[0x22AAB5C80](0xD000000000000015, 0x80000002283AF8A0);

  *v4 = v9;
  v4[1] = v10;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end