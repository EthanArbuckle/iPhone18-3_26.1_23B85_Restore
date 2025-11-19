@interface MedicalRecordChartPoint
- (NSString)description;
- (_TtC15HealthRecordsUI23MedicalRecordChartPoint)init;
- (id)allYValues;
- (id)maxYValue;
- (id)yValueForKey:(id)a3;
@end

@implementation MedicalRecordChartPoint

- (id)yValueForKey:(id)a3
{
  sub_1D139016C();
  v4 = self;
  sub_1D120940C(v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1D139161C();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allYValues
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_sortedYValues);
  v3 = self;
  sub_1D110B3FC(v2);

  v4 = sub_1D139044C();

  return v4;
}

- (id)maxYValue
{
  if ((*(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_sortedYValues))[2])
  {
    v3 = sub_1D139161C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_1D1209920();

  v3 = sub_1D139012C();

  return v3;
}

- (_TtC15HealthRecordsUI23MedicalRecordChartPoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end