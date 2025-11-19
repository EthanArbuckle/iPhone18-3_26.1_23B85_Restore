@interface TrainingLoadSummaryQuery
+ (Class)configurationClass;
+ (void)configureClientInterface:(id)a3;
- (_TtC13HealthBalance24TrainingLoadSummaryQuery)initWithQueryDescriptors:(id)a3;
- (void)client_deliverTrainingLoadSampleDaySummaries:(id)a3 queryUUID:(id)a4;
- (void)queue_deliverError:(id)a3;
- (void)queue_populateConfiguration:(id)a3;
- (void)queue_queryDidDeactivate:(id)a3;
@end

@implementation TrainingLoadSummaryQuery

- (void)client_deliverTrainingLoadSampleDaySummaries:(id)a3 queryUUID:(id)a4
{
  v5 = sub_1CFE30354();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE30A84();
  sub_1CFE30344();
  v11 = self;
  TrainingLoadSummaryQuery.client_deliverTrainingLoadSampleDaySummaries(_:queryUUID:)(v10, v9);

  (*(v6 + 8))(v9, v5);
}

+ (Class)configurationClass
{
  type metadata accessor for TrainingLoadDaySummaryQueryConfiguration();

  return swift_getObjCClassFromMetadata();
}

- (void)queue_populateConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  TrainingLoadSummaryQuery.queue_populateConfiguration(_:)(v4);
}

- (void)queue_deliverError:(id)a3
{
  v5 = a3;
  v4 = self;
  TrainingLoadSummaryQuery.queue_deliverError(_:)(v5);
}

- (void)queue_queryDidDeactivate:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = sub_1CFE30354();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE30344();
  v10 = self;
  v11 = sub_1CFE30334();
  v15.receiver = v10;
  v15.super_class = ObjectType;
  [(HKQuery *)&v15 queue_queryDidDeactivate:v11];

  (*(v6 + 8))(v9, v5);
  v12 = (&v10->super.super.isa + OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler);
  v13 = *(&v10->super.super.isa + OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler);
  v14 = *(&v10->super._hasBeenExecuted + OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler);
  *v12 = 0;
  v12[1] = 0;
  sub_1CFDAC3D4(v13);
}

+ (void)configureClientInterface:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static TrainingLoadSummaryQuery.configureClientInterface(_:)(v4);
}

- (_TtC13HealthBalance24TrainingLoadSummaryQuery)initWithQueryDescriptors:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end