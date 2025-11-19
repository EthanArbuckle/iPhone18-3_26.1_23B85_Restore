@interface AudiogramChartDataFormatter
- (_TtC8HealthUI27AudiogramChartDataFormatter)init;
- (id)unitStringFromUnit:(id)a3 number:(id)a4;
- (id)valueStringFromNumber:(id)a3;
@end

@implementation AudiogramChartDataFormatter

- (_TtC8HealthUI27AudiogramChartDataFormatter)init
{
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

- (id)unitStringFromUnit:(id)a3 number:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [(HKInteractiveChartDataFormatter *)v8 unitController];
  if (v9)
  {
    v10 = v9;
    v11 = [(HKUnitPreferenceController *)v9 localizedDisplayNameForUnit:v6 value:v7];

    sub_1C3D20104();
  }

  else
  {
  }

  v12 = sub_1C3D200C4();

  return v12;
}

- (id)valueStringFromNumber:(id)a3
{
  v3 = a3;
  [v3 doubleValue];
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