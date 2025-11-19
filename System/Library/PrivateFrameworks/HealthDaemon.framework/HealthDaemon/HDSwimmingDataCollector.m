@interface HDSwimmingDataCollector
- (Class)sensorDatumClassForAggregator:(id)a3;
- (_TtC12HealthDaemon23HDSwimmingDataCollector)init;
- (id)identifierForDataAggregator:(id)a3;
- (id)sourceForDataAggregator:(id)a3;
- (void)dataAggregator:(id)a3 requestsCollectionThroughDate:(id)a4 completion:(id)a5;
- (void)historicalSwimmingDataDidUpdate:(id)a3 reference:(id)a4;
@end

@implementation HDSwimmingDataCollector

- (void)historicalSwimmingDataDidUpdate:(id)a3 reference:(id)a4
{
  type metadata accessor for HDCMSwimData();
  v6 = sub_22911C45C();
  v7 = a4;
  v8 = self;
  sub_2289D5B10(v6, v7);
}

- (void)dataAggregator:(id)a3 requestsCollectionThroughDate:(id)a4 completion:(id)a5
{
  v8 = sub_22911B88C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_22911B86C();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = self;
  sub_2289D8718(v12, sub_2289CADB0, v14);

  (*(v9 + 8))(v12, v8);
}

- (Class)sensorDatumClassForAggregator:(id)a3
{
  sub_2289B3D00(0, &qword_27D863198, off_27860F198);

  return swift_getObjCClassFromMetadata();
}

- (id)sourceForDataAggregator:(id)a3
{
  v3 = [objc_opt_self() _localDeviceSource];

  return v3;
}

- (id)identifierForDataAggregator:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(HDSwimmingDataCollector *)v5 description];
  v7 = sub_22911C35C();
  v9 = v8;

  MEMORY[0x22AAC5FC0](v7, v9);

  MEMORY[0x22AAC5FC0](45, 0xE100000000000000);
  sub_22911C94C();

  v10 = sub_22911C34C();

  return v10;
}

- (_TtC12HealthDaemon23HDSwimmingDataCollector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end