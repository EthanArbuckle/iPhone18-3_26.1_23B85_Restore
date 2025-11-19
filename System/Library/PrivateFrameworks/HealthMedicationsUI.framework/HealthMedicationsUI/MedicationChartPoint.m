@interface MedicationChartPoint
- (_TtC19HealthMedicationsUI20MedicationChartPoint)init;
- (id)allYValues;
- (id)minYValue;
- (id)userInfo;
- (id)yValueForKey:(id)a3;
@end

@implementation MedicationChartPoint

- (id)yValueForKey:(id)a3
{
  v3 = self;
  if (sub_2282325DC())
  {
    sub_2282329D8();
  }

  else
  {
    v4 = *(&v3->super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount);
    v5 = *(&v3->super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount);
  }

  v6 = sub_228393480();

  return v6;
}

- (id)allYValues
{
  v2 = self;
  sub_228232F18();

  v3 = sub_228392190();

  return v3;
}

- (id)minYValue
{
  v2 = self;
  sub_228233054(v11);

  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x28223BE20](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_228393450();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)userInfo
{
  v2 = self;
  v3 = sub_228233294();

  return v3;
}

- (_TtC19HealthMedicationsUI20MedicationChartPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end