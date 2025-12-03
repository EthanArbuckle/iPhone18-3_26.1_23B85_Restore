@interface HDSwimmingDataCollector
- (Class)sensorDatumClassForAggregator:(id)aggregator;
- (_TtC12HealthDaemon23HDSwimmingDataCollector)init;
- (id)identifierForDataAggregator:(id)aggregator;
- (id)sourceForDataAggregator:(id)aggregator;
- (void)dataAggregator:(id)aggregator requestsCollectionThroughDate:(id)date completion:(id)completion;
- (void)historicalSwimmingDataDidUpdate:(id)update reference:(id)reference;
@end

@implementation HDSwimmingDataCollector

- (void)historicalSwimmingDataDidUpdate:(id)update reference:(id)reference
{
  type metadata accessor for HDCMSwimData();
  v6 = sub_22911C45C();
  referenceCopy = reference;
  selfCopy = self;
  sub_2289D5B10(v6, referenceCopy);
}

- (void)dataAggregator:(id)aggregator requestsCollectionThroughDate:(id)date completion:(id)completion
{
  v8 = sub_22911B88C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_22911B86C();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  aggregatorCopy = aggregator;
  selfCopy = self;
  sub_2289D8718(v12, sub_2289CADB0, v14);

  (*(v9 + 8))(v12, v8);
}

- (Class)sensorDatumClassForAggregator:(id)aggregator
{
  sub_2289B3D00(0, &qword_27D863198, off_27860F198);

  return swift_getObjCClassFromMetadata();
}

- (id)sourceForDataAggregator:(id)aggregator
{
  _localDeviceSource = [objc_opt_self() _localDeviceSource];

  return _localDeviceSource;
}

- (id)identifierForDataAggregator:(id)aggregator
{
  aggregatorCopy = aggregator;
  selfCopy = self;
  v6 = [(HDSwimmingDataCollector *)selfCopy description];
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