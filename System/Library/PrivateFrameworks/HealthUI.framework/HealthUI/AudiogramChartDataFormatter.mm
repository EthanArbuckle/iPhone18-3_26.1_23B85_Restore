@interface AudiogramChartDataFormatter
- (_TtC8HealthUI27AudiogramChartDataFormatter)init;
- (id)unitStringFromUnit:(id)unit number:(id)number;
- (id)valueStringFromNumber:(id)number;
@end

@implementation AudiogramChartDataFormatter

- (_TtC8HealthUI27AudiogramChartDataFormatter)init
{
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

- (id)unitStringFromUnit:(id)unit number:(id)number
{
  unitCopy = unit;
  numberCopy = number;
  selfCopy = self;
  unitController = [(HKInteractiveChartDataFormatter *)selfCopy unitController];
  if (unitController)
  {
    v10 = unitController;
    v11 = [(HKUnitPreferenceController *)unitController localizedDisplayNameForUnit:unitCopy value:numberCopy];

    sub_1C3D20104();
  }

  else
  {
  }

  v12 = sub_1C3D200C4();

  return v12;
}

- (id)valueStringFromNumber:(id)number
{
  numberCopy = number;
  [numberCopy doubleValue];
  v5 = HKRoundWithPositiveZeroForDoubleValue(v4);
  sub_1C3C702E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E63B0];
  *(v6 + 16) = xmmword_1C3D5F370;
  v8 = MEMORY[0x1E69E6438];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  sub_1C3D20114();

  v9 = sub_1C3D200C4();

  return v9;
}

@end