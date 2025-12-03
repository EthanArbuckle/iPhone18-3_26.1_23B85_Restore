@interface TrainingLoadSummaryQuery
+ (Class)configurationClass;
+ (void)configureClientInterface:(id)interface;
- (_TtC13HealthBalance24TrainingLoadSummaryQuery)initWithQueryDescriptors:(id)descriptors;
- (void)client_deliverTrainingLoadSampleDaySummaries:(id)summaries queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
@end

@implementation TrainingLoadSummaryQuery

- (void)client_deliverTrainingLoadSampleDaySummaries:(id)summaries queryUUID:(id)d
{
  v5 = sub_1CFE30354();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE30A84();
  sub_1CFE30344();
  selfCopy = self;
  TrainingLoadSummaryQuery.client_deliverTrainingLoadSampleDaySummaries(_:queryUUID:)(v10, v9);

  (*(v6 + 8))(v9, v5);
}

+ (Class)configurationClass
{
  type metadata accessor for TrainingLoadDaySummaryQueryConfiguration();

  return swift_getObjCClassFromMetadata();
}

- (void)queue_populateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  TrainingLoadSummaryQuery.queue_populateConfiguration(_:)(configurationCopy);
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  TrainingLoadSummaryQuery.queue_deliverError(_:)(errorCopy);
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  ObjectType = swift_getObjectType();
  v5 = sub_1CFE30354();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE30344();
  selfCopy = self;
  v11 = sub_1CFE30334();
  v15.receiver = selfCopy;
  v15.super_class = ObjectType;
  [(HKQuery *)&v15 queue_queryDidDeactivate:v11];

  (*(v6 + 8))(v9, v5);
  v12 = (&selfCopy->super.super.isa + OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler);
  v13 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler);
  v14 = *(&selfCopy->super._hasBeenExecuted + OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler);
  *v12 = 0;
  v12[1] = 0;
  sub_1CFDAC3D4(v13);
}

+ (void)configureClientInterface:(id)interface
{
  swift_getObjCClassMetadata();
  interfaceCopy = interface;
  static TrainingLoadSummaryQuery.configureClientInterface(_:)(interfaceCopy);
}

- (_TtC13HealthBalance24TrainingLoadSummaryQuery)initWithQueryDescriptors:(id)descriptors
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end