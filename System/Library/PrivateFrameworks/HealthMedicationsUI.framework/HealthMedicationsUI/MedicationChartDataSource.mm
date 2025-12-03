@interface MedicationChartDataSource
- (_TtC19HealthMedicationsUI25MedicationChartDataSource)init;
- (_TtC19HealthMedicationsUI25MedicationChartDataSource)initWithDataType:(id)type healthStore:(id)store;
- (_TtC19HealthMedicationsUI25MedicationChartDataSource)initWithDisplayType:(id)type healthStore:(id)store;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
@end

@implementation MedicationChartDataSource

- (id)queryDescription
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_medication);
  selfCopy = self;
  semanticIdentifier = [v2 semanticIdentifier];
  stringValue = [semanticIdentifier stringValue];

  if (!stringValue)
  {
    sub_228392000();
    stringValue = sub_228391FC0();
  }

  return stringValue;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_2283571CC(requestCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);

  sub_22817A958(0, &unk_280DDB9A0, 0x277CCD838);
  v9 = sub_228392190();

  return v9;
}

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  requestCopy = request;
  storeCopy = store;
  selfCopy = self;
  sub_228354F08(requestCopy, storeCopy, sub_2283596C8, v9);
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

- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source
{
  dataCopy = data;
  selfCopy = self;
  v7 = sub_228358908(dataCopy);

  return v7;
}

- (_TtC19HealthMedicationsUI25MedicationChartDataSource)initWithDisplayType:(id)type healthStore:(id)store
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HealthMedicationsUI25MedicationChartDataSource)initWithDataType:(id)type healthStore:(id)store
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