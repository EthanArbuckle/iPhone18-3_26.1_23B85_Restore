@interface MedicationChartDataSource
- (_TtC19HealthMedicationsUI25MedicationChartDataSource)init;
- (_TtC19HealthMedicationsUI25MedicationChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4;
- (_TtC19HealthMedicationsUI25MedicationChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4;
- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4;
- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryDescription;
@end

@implementation MedicationChartDataSource

- (id)queryDescription
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_medication);
  v3 = self;
  v4 = [v2 semanticIdentifier];
  v5 = [v4 stringValue];

  if (!v5)
  {
    sub_228392000();
    v5 = sub_228391FC0();
  }

  return v5;
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_2283571CC(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);

  sub_22817A958(0, &unk_280DDB9A0, 0x277CCD838);
  v9 = sub_228392190();

  return v9;
}

- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_228354F08(v10, v11, sub_2283596C8, v9);
  v14 = v13;

  v17[4] = sub_2283571C4;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_228191E9C;
  v17[3] = &block_descriptor_63;
  v15 = _Block_copy(v17);

  return v15;
}

- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_228358908(v5);

  return v7;
}

- (_TtC19HealthMedicationsUI25MedicationChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HealthMedicationsUI25MedicationChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HealthMedicationsUI25MedicationChartDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end